
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kod_entry {int type; int hostname; } ;


 int TEST_ASSERT_EQUAL (int,int ) ;
 int TEST_ASSERT_EQUAL_STRING (char const*,int ) ;
 int add_entry (char const*,char const*) ;
 int free (struct kod_entry*) ;
 int search_entry (char const*,struct kod_entry**) ;

void
test_MultipleEntryHandling(void) {
 const char HOST1[] = "192.0.2.3";
 const char REASON1[] = "DENY";

 const char HOST2[] = "192.0.5.5";
 const char REASON2[] = "RATE";

 const char HOST3[] = "192.0.10.1";
 const char REASON3[] = "DENY";

 add_entry(HOST1, REASON1);
 add_entry(HOST2, REASON2);
 add_entry(HOST3, REASON3);

 struct kod_entry* result;

 TEST_ASSERT_EQUAL(1, search_entry(HOST1, &result));
 TEST_ASSERT_EQUAL_STRING(HOST1, result->hostname);
 TEST_ASSERT_EQUAL_STRING(REASON1, result->type);

 TEST_ASSERT_EQUAL(1, search_entry(HOST2, &result));
 TEST_ASSERT_EQUAL_STRING(HOST2, result->hostname);
 TEST_ASSERT_EQUAL_STRING(REASON2, result->type);

 TEST_ASSERT_EQUAL(1, search_entry(HOST3, &result));
 TEST_ASSERT_EQUAL_STRING(HOST3, result->hostname);
 TEST_ASSERT_EQUAL_STRING(REASON3, result->type);

 free(result);
}
