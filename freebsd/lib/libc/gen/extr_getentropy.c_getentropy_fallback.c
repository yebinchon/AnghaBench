
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EFAULT ;
 int _getentropy_fail () ;
 size_t arnd_sysctl (void*,size_t) ;
 scalar_t__ errno ;

__attribute__((used)) static int
getentropy_fallback(void *buf, size_t buflen)
{





 if (buf == ((void*)0) && buflen > 0) {
  errno = EFAULT;
  return (-1);
 }
 if (arnd_sysctl(buf, buflen) != buflen) {
  if (errno == EFAULT)
   return (-1);
  _getentropy_fail();
 }
 return (0);
}
