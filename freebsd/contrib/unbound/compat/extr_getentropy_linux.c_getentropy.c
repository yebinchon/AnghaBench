
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EIO ;
 scalar_t__ ENOSYS ;
 int SIGKILL ;
 scalar_t__ errno ;
 int getentropy_fallback (void*,size_t) ;
 int getentropy_getrandom (void*,size_t) ;
 int getentropy_sysctl (void*,size_t) ;
 int getentropy_urandom (void*,size_t) ;
 int raise (int ) ;

int
getentropy(void *buf, size_t len)
{
 int ret = -1;

 if (len > 256) {
  errno = EIO;
  return -1;
 }
 ret = getentropy_urandom(buf, len);
 if (ret != -1)
  return (ret);
 ret = getentropy_fallback(buf, len);
 if (ret != -1)
  return (ret);

 errno = EIO;
 return (ret);
}
