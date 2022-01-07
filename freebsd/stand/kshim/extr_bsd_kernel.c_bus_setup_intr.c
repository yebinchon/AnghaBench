
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int dummy; } ;
typedef int driver_intr_t ;
typedef int driver_filter_t ;
typedef TYPE_1__* device_t ;
struct TYPE_3__ {void* dev_irq_arg; int dev_irq_fn; int dev_irq_filter; } ;



int
bus_setup_intr(device_t dev, struct resource *r, int flags,
    driver_filter_t filter, driver_intr_t handler, void *arg, void **cookiep)
{

 dev->dev_irq_filter = filter;
 dev->dev_irq_fn = handler;
 dev->dev_irq_arg = arg;

 return (0);
}
