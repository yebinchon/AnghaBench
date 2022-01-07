
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef scalar_t__ ssize_t ;


 int ATF_REQUIRE (int) ;
 int ATF_REQUIRE_MSG (int,char*,char const*,int ) ;
 int O_CREAT ;
 int O_WRONLY ;
 int close (int) ;
 int errno ;
 int open (char const*,int,int) ;
 int strerror (int ) ;
 int sysctlbyname (char const*,int*,size_t*,int *,int ) ;
 scalar_t__ write (int,int*,size_t) ;

__attribute__((used)) static void
save_int_sysctl(const char *name, const char *file)
{
 ssize_t n;
 size_t sz;
 int error, fd, val;

 sz = sizeof(val);
 error = sysctlbyname(name, &val, &sz, ((void*)0), 0);
 ATF_REQUIRE_MSG(error == 0,
     "sysctlbyname(%s): %s", name, strerror(errno));

 fd = open(file, O_CREAT | O_WRONLY, 0600);
 ATF_REQUIRE_MSG(fd >= 0, "open(%s): %s", file, strerror(errno));
 n = write(fd, &val, sz);
 ATF_REQUIRE(n >= 0 && (size_t)n == sz);
 error = close(fd);
 ATF_REQUIRE(error == 0);
}
