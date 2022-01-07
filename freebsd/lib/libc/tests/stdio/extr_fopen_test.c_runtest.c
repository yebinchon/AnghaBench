
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ATF_REQUIRE_MSG (int,char*,...) ;
 int CORRECT_O_ACCMODE ;
 int FD_CLOEXEC ;
 int F_GETFD ;
 int F_GETFL ;
 int O_APPEND ;
 int O_RDONLY ;
 int O_RDWR ;
 int O_WRONLY ;
 int atf_tc_fail (char*,char const*) ;
 int fclose (int *) ;
 int fcntl (int,int ) ;
 int fileno (int *) ;
 int * fopen (char const*,char const*) ;
 int * strchr (char const*,char) ;

__attribute__((used)) static void
runtest(const char *fname, const char *mode)
{
 FILE *fp;
 int exp_fget_ret, fget_ret, fd, flags, wantedflags;

 fp = fopen(fname, mode);
 ATF_REQUIRE_MSG(fp != ((void*)0),
     "fopen(\"%s\", \"%s\") failed", fname, mode);
 fd = fileno(fp);
 ATF_REQUIRE_MSG(fd >= 0, "fileno() failed for fopen");
 exp_fget_ret = strchr(mode, 'e') != ((void*)0) ? FD_CLOEXEC : 0;
 ATF_REQUIRE_MSG((fget_ret = fcntl(fd, F_GETFD)) == exp_fget_ret,
     "fcntl(.., F_GETFD) didn't FD_CLOEXEC as expected %d != %d",
     exp_fget_ret, fget_ret);
 flags = fcntl(fd, F_GETFL);
 if (strchr(mode, '+'))
  wantedflags = O_RDWR | (*mode == 'a' ? O_APPEND : 0);
 else if (*mode == 'r')
  wantedflags = O_RDONLY;
 else if (*mode == 'w')
  wantedflags = O_WRONLY;
 else if (*mode == 'a')
  wantedflags = O_WRONLY | O_APPEND;
 else
  wantedflags = -1;
 fclose(fp);
 if (wantedflags == -1)
  atf_tc_fail("unrecognized mode: %s", mode);
 else if ((flags & (CORRECT_O_ACCMODE | O_APPEND)) != wantedflags)
  atf_tc_fail("incorrect access mode: %s", mode);
}
