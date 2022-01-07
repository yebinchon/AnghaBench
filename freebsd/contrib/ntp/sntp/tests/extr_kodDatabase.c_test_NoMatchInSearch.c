
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kod_entry {int dummy; } ;


 int TEST_ASSERT_EQUAL (int ,int ) ;
 int TEST_ASSERT_TRUE (int ) ;
 int add_entry (char const*,char const*) ;
 int search_entry (char const*,struct kod_entry**) ;

void
test_NoMatchInSearch(void) {
 const char HOST_ADD[] = "192.0.2.6";
 const char HOST_NOTADD[] = "192.0.6.1";
 const char REASON[] = "DENY";

 add_entry(HOST_ADD, REASON);

 struct kod_entry* result;

 TEST_ASSERT_EQUAL(0, search_entry(HOST_NOTADD, &result));
 TEST_ASSERT_TRUE(result == ((void*)0));
}
