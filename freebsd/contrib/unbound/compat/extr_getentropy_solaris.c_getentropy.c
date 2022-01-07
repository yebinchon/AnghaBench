
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 int SIGKILL ;
 int errno ;
 int getentropy_fallback (void*,size_t) ;
 int getentropy_urandom (void*,size_t,char*,int) ;
 int raise (int ) ;

int
getentropy(void *buf, size_t len)
{
 int ret = -1;

 if (len > 256) {
  errno = EIO;
  return -1;
 }
 ret = getentropy_urandom(buf, len,
     "/devices/pseudo/random@0:urandom", 1);
 if (ret != -1)
  return (ret);
 ret = getentropy_urandom(buf, len, "/dev/urandom", 0);
 if (ret != -1)
  return (ret);
 ret = getentropy_fallback(buf, len);
 if (ret != -1)
  return (ret);

 errno = EIO;
 return (ret);
}
