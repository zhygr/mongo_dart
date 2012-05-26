#library("ObjectoryWS");
#import("../../lib/objectory/ObjectoryLib_ws.dart");
#import("../../lib/bson/bson.dart");
#import('../../third_party/unittest/unittest.dart');
#source("DomainModel.dart");
Future<bool> setUpObjectory(){
  var res = new Completer();
//  objectory.clearFactories();
  objectory.open(url:"ws://localhost:8080").then((_){
//  new Future.immediate(true).then((_){    
//    objectory.dropDb();
    print("I'm here");
//    registerClasses();
//    res.complete(true);
  });    
  return res.future;
}
/*void testInsertionAndUpdate(){
  Author author = new Author();  
  author.name = 'Dan';
  author.age = 3;
  author.email = 'who@cares.net';  
  objectory.save(author); // First insert;
  author.age = 4;
  objectory.save(author); // Then update;
  objectory.find('Author').then((coll){
    expect(coll.length).equals(1);
    Author authFromMongo = coll[0];
    expect(authFromMongo.age).equals(4);    
    callbackDone();
  });
}
testNewInstanceMethod(){
  Author author = objectory.newInstance('Author');
  expect(author is Author).isTrue();
}
testMap2ObjectMethod(){
  Map map = {
    "name": "Vadim",
    "age": 300,
    "email": "nobody@know.it"};
  Author author = objectory.map2Object("Author",map);
  // Not converted to upperCase because setter has not been invoked
  expect(author.name).equals("Vadim"); 
  expect(author.age).equals(300);
  expect(author.email).equals("nobody@know.it");
  map = {
    "streetName": "333",
    "cityName": "44444"
    };
  Address address = objectory.map2Object("Address",map);  
  expect(address.cityName).equals("44444");   
}
testCompoundObject(){
  Person person = new Person();  
  person.address.cityName = 'Tyumen';
  person.address.streetName = 'Elm';  
  person.firstName = 'Dick';
  objectory.save(person); ;
  objectory.findOne('Person',query().id(person.id)).then((savedPerson){
    expect(savedPerson.firstName).equals('Dick');
    expect(savedPerson.address.streetName).equals('Elm');
    expect(savedPerson.address.cityName).equals('Tyumen');
    callbackDone();
  });
}
testObjectWithLinks(){
  Person father = new Person();  
  father.firstName = 'Father';
  objectory.save(father);
  Person son = new Person();  
  son.firstName = 'Son';
  son.father = father;
  objectory.save(son);  
  objectory.findOne('Person',query().id(son.id)).then((sonFromObjectory){
    // Links must be fetched before use.
    Expect.throws(()=>sonFromObjectory.father.firstName);
    expect(sonFromObjectory.mother).equals(null);
    sonFromObjectory.fetchLinks().then((_){
      expect(sonFromObjectory.father.firstName).equals("Father");
      expect(sonFromObjectory.mother).equals(null);
      callbackDone();
    });    
  });  
}
*/
main(){  
  setUpObjectory().then((_) {    
//    objectory.onMessageFuture.then((_){
//      print("Now here ${objectory.socketId}");      
//      Person person = new Person();
//      print(person);
//      person.firstName1 = "asdfasdf";
//      print(person);
//      person.fistName = 'Vadim';
//      objectory.save(person);                
      1.foo();
      print("Before closing");
      objectory.close();      
//      return;
//      });
    return;
  /* 
   group("ObjectoryVM", ()  {
      asyncTest("testCompoundObject",1,testCompoundObject);   
      asyncTest("testInsertionAndUpdate",1,testInsertionAndUpdate);         
      asyncTest("testObjectWithLinks",1,testObjectWithLinks);               
      test("testNewInstanceMethod",testNewInstanceMethod);   
      test("testMap2ObjectMethod",testMap2ObjectMethod);       
    });  
*/    
  });    
}