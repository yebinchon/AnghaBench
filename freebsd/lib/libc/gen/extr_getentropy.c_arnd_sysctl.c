
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int CTL_KERN ;
 int KERN_ARND ;
 int __sysctl (int*,int,int *,size_t*,int *,int ) ;

__attribute__((used)) static size_t
arnd_sysctl(u_char *buf, size_t size)
{
 int mib[2];
 size_t len, done;

 mib[0] = CTL_KERN;
 mib[1] = KERN_ARND;
 done = 0;

 do {
  len = size;
  if (__sysctl(mib, 2, buf, &len, ((void*)0), 0) == -1)
   return (done);
  done += len;
  buf += len;
  size -= len;
 } while (size > 0);

 return (done);
}
