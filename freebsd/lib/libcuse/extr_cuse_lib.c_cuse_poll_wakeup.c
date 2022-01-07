
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CUSE_IOCTL_SELWAKEUP ;
 scalar_t__ f_cuse ;
 int ioctl (scalar_t__,int ,int*) ;

void
cuse_poll_wakeup(void)
{
 int error = 0;

 if (f_cuse < 0)
  return;

 ioctl(f_cuse, CUSE_IOCTL_SELWAKEUP, &error);
}
