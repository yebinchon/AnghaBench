
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int dummy; } ;
typedef TYPE_1__* device_t ;
struct TYPE_3__ {int * dev_irq_arg; int * dev_irq_fn; int * dev_irq_filter; } ;



int
bus_teardown_intr(device_t dev, struct resource *r, void *cookie)
{

 dev->dev_irq_filter = ((void*)0);
 dev->dev_irq_fn = ((void*)0);
 dev->dev_irq_arg = ((void*)0);

 return (0);
}
