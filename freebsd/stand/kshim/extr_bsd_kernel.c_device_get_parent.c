
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* device_t ;
struct TYPE_4__ {struct TYPE_4__* dev_parent; } ;



device_t
device_get_parent(device_t dev)
{
 return (dev ? dev->dev_parent : ((void*)0));
}
