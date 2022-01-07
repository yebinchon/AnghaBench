
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* device_t ;
struct TYPE_3__ {void* dev_aux; } ;



void
device_set_ivars(device_t dev, void *ivars)
{
 dev->dev_aux = ivars;
}
