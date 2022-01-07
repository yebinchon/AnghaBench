
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CreatePath (char*,int ) ;
 int INPUT_DIR ;
 int TEST_ASSERT_EQUAL (int ,int ) ;
 int TRUE ;
 int kod_db_cnt ;
 int kod_init_kod_db (int ,int ) ;

void
test_ReadEmptyFile(void) {
 kod_init_kod_db(CreatePath("kod-test-empty", INPUT_DIR), TRUE);

 TEST_ASSERT_EQUAL(0, kod_db_cnt);
}
