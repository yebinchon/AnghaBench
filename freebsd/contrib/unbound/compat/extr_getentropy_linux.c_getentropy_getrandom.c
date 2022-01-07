
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINTR ;
 int SYS_getrandom ;
 int errno ;
 int syscall (int ,void*,size_t,int ) ;

__attribute__((used)) static int
getentropy_getrandom(void *buf, size_t len)
{
 int pre_errno = errno;
 int ret;
 if (len > 256)
  return (-1);
 do {
  ret = syscall(SYS_getrandom, buf, len, 0);
 } while (ret == -1 && errno == EINTR);

 if (ret != (int)len)
  return (-1);
 errno = pre_errno;
 return (0);
}
