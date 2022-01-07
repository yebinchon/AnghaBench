
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timestamp; } ;
typedef int FILE ;


 int CompareFileContent (int *,int *) ;
 int CreatePath (char*,int ) ;
 int GetFileSize (int *) ;
 int INPUT_DIR ;
 int TEST_ASSERT_EQUAL (int ,int ) ;
 int TEST_ASSERT_NOT_NULL (int *) ;
 int TEST_ASSERT_TRUE (int ) ;
 int add_entry (char*,char*) ;
 int estrdup (char*) ;
 int * fopen (int ,char*) ;
 TYPE_1__** kod_db ;
 int kod_db_file ;
 int write_kod_db () ;

void
test_WriteFileWithSingleEntry(void) {
 kod_db_file = estrdup("kod-output-single");
 add_entry("host1", "DENY");




 kod_db[0]->timestamp = 1;

 write_kod_db();


 FILE * actual = fopen(kod_db_file, "rb");
 FILE * expected = fopen(CreatePath("kod-expected-single", INPUT_DIR),"rb");

 TEST_ASSERT_NOT_NULL(actual);
 TEST_ASSERT_NOT_NULL(expected);

 TEST_ASSERT_EQUAL(GetFileSize(expected), GetFileSize(actual));

 TEST_ASSERT_TRUE(CompareFileContent(expected, actual));
}
