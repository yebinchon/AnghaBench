
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ATF_CHECK_MSG (int,char*,int,...) ;
 int FD_CLOEXEC ;
 int F_GETFD ;
 int errno ;
 int fcntl (int ,int ) ;
 int fileno (int *) ;
 int * strchr (char const*,char) ;

__attribute__((used)) static void
check_cloexec(FILE *fp, const char *mode)
{
 int exp_flags, flags;

 flags = fcntl(fileno(fp), F_GETFD);
 ATF_CHECK_MSG(flags != -1, "fcntl(F_GETFD) failed; errno=%d", errno);
 if (flags == -1)
  return;
 if (strchr(mode, 'e') != ((void*)0))
  exp_flags = FD_CLOEXEC;
 else
  exp_flags = 0;
 ATF_CHECK_MSG((flags & FD_CLOEXEC) == exp_flags,
     "bad cloexec flag; %d != %d", flags, exp_flags);
}
