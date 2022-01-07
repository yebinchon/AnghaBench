
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ATF_REQUIRE_MSG (int,char*,char const*,int,char const*,...) ;
 int close (int) ;
 int errno ;
 int fclose (int *) ;
 int * fdopen (int,char const*) ;
 int open (char const*,int) ;

__attribute__((used)) static void
runtest(const char *fname, int intmode, const char *strmode, bool success)
{
 FILE *fp;
 int fd;

 fd = open(fname, intmode);
 ATF_REQUIRE_MSG(fd != -1,
     "open(\"%s\", %#x) failed; errno=%d", fname, intmode, errno);

 fp = fdopen(fd, strmode);
 if (fp == ((void*)0)) {
  close(fd);
  ATF_REQUIRE_MSG(success == 0,
      "fdopen(open(\"%s\", %#x), \"%s\") succeeded unexpectedly",
      fname, intmode, strmode);
  return;
 }
 ATF_REQUIRE_MSG(success == 1,
     "fdopen(open(\"%s\", %#x), \"%s\") failed; errno=%d",
     fname, intmode, strmode, errno);
 fclose(fp);
}
