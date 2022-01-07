
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int devclass_t ;


 int devclass_get_device (int ,int) ;
 void* device_get_softc (int ) ;

void *
devclass_get_softc(devclass_t dc, int unit)
{
 return (device_get_softc(devclass_get_device(dc, unit)));
}
