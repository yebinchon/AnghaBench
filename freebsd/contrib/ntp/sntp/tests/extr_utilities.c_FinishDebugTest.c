
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int CompareFileContent (int *,int *) ;
 int TEST_ASSERT_NOT_NULL (int *) ;
 int fclose (int ) ;
 int * fopen (char const*,char*) ;
 int outputFile ;
 scalar_t__ outputFileOpened ;

void
FinishDebugTest(const char * expected,
       const char * actual) {
 if (outputFileOpened)
  fclose(outputFile);

 FILE * e = fopen(expected,"rb");
 FILE * a = fopen(actual,"rb");
 TEST_ASSERT_NOT_NULL(e);
 TEST_ASSERT_NOT_NULL(a);

 CompareFileContent(e, a);
}
