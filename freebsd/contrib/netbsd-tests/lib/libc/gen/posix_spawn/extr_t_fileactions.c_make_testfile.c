
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ATF_REQUIRE (int) ;
 int TESTCONTENT ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 size_t fwrite (int ,int,size_t,int *) ;
 size_t strlen (int ) ;

__attribute__((used)) static void
make_testfile(const char *restrict file)
{
 FILE *f;
 size_t written;

 f = fopen(file, "w");
 ATF_REQUIRE(f != ((void*)0));
 written = fwrite(TESTCONTENT, 1, strlen(TESTCONTENT), f);
 fclose(f);
 ATF_REQUIRE(written == strlen(TESTCONTENT));
}
