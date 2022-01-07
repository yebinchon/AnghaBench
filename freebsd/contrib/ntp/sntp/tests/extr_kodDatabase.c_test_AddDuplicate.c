
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kod_entry {scalar_t__ timestamp; } ;


 int TEST_ASSERT_EQUAL (int,int ) ;
 int TEST_ASSERT_FALSE (int) ;
 int add_entry (char const*,char const*) ;
 int free (struct kod_entry*) ;
 int search_entry (char const*,struct kod_entry**) ;
 int sleep (int) ;

void
test_AddDuplicate(void) {
 const char HOST[] = "192.0.2.3";
 const char REASON1[] = "RATE";
 const char REASON2[] = "DENY";

 add_entry(HOST, REASON1);
 struct kod_entry* result1;
 TEST_ASSERT_EQUAL(1, search_entry(HOST, &result1));





 sleep(2);

 add_entry(HOST, REASON2);
 struct kod_entry* result2;
 TEST_ASSERT_EQUAL(1, search_entry(HOST, &result2));

 TEST_ASSERT_FALSE(result1->timestamp == result2->timestamp);

 free(result1);
 free(result2);
}
