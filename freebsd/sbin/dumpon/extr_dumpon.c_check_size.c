
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uintmax_t ;
typedef int physmem ;
typedef scalar_t__ off_t ;
typedef int minidump ;


 int CTL_HW ;
 int DIOCGMEDIASIZE ;
 int EX_IOERR ;
 int EX_OSERR ;
 int HW_PHYSMEM ;
 int err (int ,char*,...) ;
 int exit (int ) ;
 scalar_t__ ioctl (int,int ,scalar_t__*) ;
 size_t nitems (int*) ;
 int printf (char*,char const*) ;
 scalar_t__ sysctl (int*,size_t,unsigned long*,size_t*,int *,int ) ;
 scalar_t__ sysctlbyname (char*,int*,size_t*,int *,int ) ;
 scalar_t__ verbose ;

__attribute__((used)) static void
check_size(int fd, const char *fn)
{
 int name[] = { CTL_HW, HW_PHYSMEM };
 size_t namelen = nitems(name);
 unsigned long physmem;
 size_t len;
 off_t mediasize;
 int minidump;

 len = sizeof(minidump);
 if (sysctlbyname("debug.minidump", &minidump, &len, ((void*)0), 0) == 0 &&
     minidump == 1)
  return;
 len = sizeof(physmem);
 if (sysctl(name, namelen, &physmem, &len, ((void*)0), 0) != 0)
  err(EX_OSERR, "can't get memory size");
 if (ioctl(fd, DIOCGMEDIASIZE, &mediasize) != 0)
  err(EX_OSERR, "%s: can't get size", fn);
 if ((uintmax_t)mediasize < (uintmax_t)physmem) {
  if (verbose)
   printf("%s is smaller than physical memory\n", fn);
  exit(EX_IOERR);
 }
}
