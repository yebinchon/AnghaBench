
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kod_entry {int dummy; } ;


 int TEST_ASSERT_EQUAL (int,int ) ;
 int add_entry (char const*,char const*) ;
 int delete_entry (char const*,char const*) ;
 int free (struct kod_entry*) ;
 int search_entry (char const*,struct kod_entry**) ;

void
test_DeleteEntry(void) {
 const char HOST1[] = "192.0.2.1";
 const char HOST2[] = "192.0.2.2";
 const char HOST3[] = "192.0.2.3";
 const char REASON[] = "DENY";

 add_entry(HOST1, REASON);
 add_entry(HOST2, REASON);
 add_entry(HOST3, REASON);

 struct kod_entry* result;

 TEST_ASSERT_EQUAL(1, search_entry(HOST2, &result));
 free(result);

 delete_entry(HOST2, REASON);

 TEST_ASSERT_EQUAL(0, search_entry(HOST2, &result));


 TEST_ASSERT_EQUAL(1, search_entry(HOST1, &result));
 free(result);
}
