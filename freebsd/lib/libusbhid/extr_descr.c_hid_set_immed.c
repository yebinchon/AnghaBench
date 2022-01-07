
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int USB_SET_IMMED ;
 int hid_set_immed_compat7 (int,int) ;
 int ioctl (int,int ,int*) ;

int
hid_set_immed(int fd, int enable)
{
 int ret;
 ret = ioctl(fd, USB_SET_IMMED, &enable);




 return (ret);
}
