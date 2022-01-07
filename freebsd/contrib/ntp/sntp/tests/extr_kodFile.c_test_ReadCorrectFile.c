
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kod_entry {int timestamp; int hostname; int type; } ;


 int CreatePath (char*,int ) ;
 int INPUT_DIR ;
 int TEST_ASSERT_EQUAL (int,int ) ;
 int TEST_ASSERT_EQUAL_STRING (char*,int ) ;
 int TRUE ;
 int kod_db_cnt ;
 int kod_init_kod_db (int ,int ) ;
 int search_entry (char*,struct kod_entry**) ;

void
test_ReadCorrectFile(void) {
 kod_init_kod_db(CreatePath("kod-test-correct", INPUT_DIR), TRUE);

 TEST_ASSERT_EQUAL(2, kod_db_cnt);

 struct kod_entry* res;

 TEST_ASSERT_EQUAL(1, search_entry("192.0.2.5", &res));
 TEST_ASSERT_EQUAL_STRING("DENY", res->type);
 TEST_ASSERT_EQUAL_STRING("192.0.2.5", res->hostname);
 TEST_ASSERT_EQUAL(0x12345678, res->timestamp);

 TEST_ASSERT_EQUAL(1, search_entry("192.0.2.100", &res));
 TEST_ASSERT_EQUAL_STRING("RSTR", res->type);
 TEST_ASSERT_EQUAL_STRING("192.0.2.100", res->hostname);
 TEST_ASSERT_EQUAL(0xfff, res->timestamp);
}
