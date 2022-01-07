
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int GetFileSize (int *) ;
 int TEST_ASSERT_EQUAL (int ,int ) ;
 int TEST_ASSERT_NOT_NULL (int *) ;
 int estrdup (char*) ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int kod_db_file ;
 int write_kod_db () ;

void
test_WriteEmptyFile(void) {
 kod_db_file = estrdup("kod-output-blank");
 write_kod_db();


 FILE * is = fopen(kod_db_file, "rb");
 TEST_ASSERT_NOT_NULL(is);

 TEST_ASSERT_EQUAL(0, GetFileSize(is));

 fclose(is);
}
