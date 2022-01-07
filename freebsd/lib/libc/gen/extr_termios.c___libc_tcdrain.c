
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIOCDRAIN ;
 int _ioctl (int,int ,int ) ;

int
__libc_tcdrain(int fd)
{

 return (_ioctl(fd, TIOCDRAIN, 0));
}
