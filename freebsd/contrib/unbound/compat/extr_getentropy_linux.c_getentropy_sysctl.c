
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __sysctl_args {int* name; int nlen; char* oldval; size_t* oldlenp; } ;



 int EIO ;


 int SYS__sysctl ;
 int errno ;
 scalar_t__ gotdata (void*,size_t) ;
 size_t min (size_t,int) ;
 scalar_t__ syscall (int ,struct __sysctl_args*) ;

__attribute__((used)) static int
getentropy_sysctl(void *buf, size_t len)
{
 static int mib[] = { 130, 129, 128 };
 size_t i;
 int save_errno = errno;

 for (i = 0; i < len; ) {
  size_t chunk = min(len - i, 16);


  struct __sysctl_args args = {
   .name = mib,
   .nlen = 3,
   .oldval = (char *)buf + i,
   .oldlenp = &chunk,
  };
  if (syscall(SYS__sysctl, &args) != 0)
   goto sysctlfailed;
  i += chunk;
 }
 if (gotdata(buf, len) == 0) {
  errno = save_errno;
  return (0);
 }
sysctlfailed:
 errno = EIO;
 return -1;
}
