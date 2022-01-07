
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef scalar_t__ ssize_t ;


 int ATF_REQUIRE (int) ;
 int ATF_REQUIRE_MSG (int,char*,char const*,int ) ;
 int O_RDONLY ;
 int close (int) ;
 int errno ;
 int open (char const*,int ) ;
 scalar_t__ read (int,int*,size_t) ;
 int strerror (int ) ;
 int sysctlbyname (char const*,int *,int *,int*,size_t) ;
 int unlink (char const*) ;

__attribute__((used)) static void
restore_int_sysctl(const char *name, const char *file)
{
 ssize_t n;
 size_t sz;
 int error, fd, val;

 fd = open(file, O_RDONLY);
 ATF_REQUIRE(fd >= 0);
 sz = sizeof(val);
 n = read(fd, &val, sz);
 ATF_REQUIRE(n >= 0 && (size_t)n == sz);
 error = unlink(file);
 ATF_REQUIRE(error == 0);
 error = close(fd);
 ATF_REQUIRE(error == 0);

 error = sysctlbyname(name, ((void*)0), ((void*)0), &val, sz);
 ATF_REQUIRE_MSG(error == 0,
     "sysctlbyname(%s): %s", name, strerror(errno));
}
