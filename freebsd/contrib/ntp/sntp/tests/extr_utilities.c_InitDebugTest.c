
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_ASSERT_NOT_NULL (int ) ;
 int fopen (char const*,char*) ;
 int outputFile ;
 int outputFileOpened ;

void
InitDebugTest(const char * filename) {


 outputFile = fopen(filename, "w+");
 TEST_ASSERT_NOT_NULL(outputFile);
 outputFileOpened = 1;
}
