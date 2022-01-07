
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int mode_t ;


 char* devname_r (int ,int ,char*,int) ;

char *
freebsd11_devname_r(uint32_t dev, mode_t type, char *buf, int len)
{

 return (devname_r(dev, type, buf, len));
}
