
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ATF_REQUIRE_MSG (int,char*,char const*,char const*,char const*,...) ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char const*,char const*) ;
 int * freopen (char const*,char const*,int *) ;

__attribute__((used)) static void
runtest(const char *fname1, const char *mode1, const char *fname2,
    const char *mode2, bool success)
{
 FILE *fp1, *fp2;
 const char *fname2_print;

 fname2_print = fname2 != ((void*)0) ? fname2 : "<NULL>";
 fp1 = fopen(fname1, mode1);
 ATF_REQUIRE_MSG(fp1 != ((void*)0),
     "fopen(\"%s\", \"%s\") failed; errno=%d", fname1, mode1, errno);
 fp2 = freopen(fname2, mode2, fp1);
 if (fp2 == ((void*)0)) {
  ATF_REQUIRE_MSG(success == 0,
      "freopen(\"%s\", \"%s\", fopen(\"%s\", \"%s\")) succeeded "
      "unexpectedly", fname2_print, mode2, fname1, mode1);
  return;
 }
 ATF_REQUIRE_MSG(success == 1,
     "freopen(\"%s\", \"%s\", fopen(\"%s\", \"%s\")) failed: %d",
     fname2_print, mode2, fname1, mode1, errno);
 fclose(fp2);
}
