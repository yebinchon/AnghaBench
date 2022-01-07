
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* device_t ;
struct TYPE_3__ {void* dev_sc; } ;



void *
device_get_softc(device_t dev)
{
 if (dev == ((void*)0))
  return (((void*)0));

 return (dev->dev_sc);
}
