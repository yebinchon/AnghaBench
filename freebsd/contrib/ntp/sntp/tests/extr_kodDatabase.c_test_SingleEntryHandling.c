
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kod_entry {int type; int hostname; } ;


 int TEST_ASSERT_EQUAL (int,int ) ;
 int TEST_ASSERT_EQUAL_STRING (char const*,int ) ;
 int add_entry (char const*,char const*) ;
 int search_entry (char const*,struct kod_entry**) ;

void
test_SingleEntryHandling(void) {
 const char HOST[] = "192.0.2.5";
 const char REASON[] = "DENY";

 add_entry(HOST, REASON);

 struct kod_entry* result;

 TEST_ASSERT_EQUAL(1, search_entry(HOST, &result));
 TEST_ASSERT_EQUAL_STRING(HOST, result->hostname);
 TEST_ASSERT_EQUAL_STRING(REASON, result->type);
}
