
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int driver_intr_t ;
typedef int driver_filter_t ;
typedef TYPE_1__* device_t ;
struct TYPE_3__ {void* dev_irq_arg; int * dev_irq_fn; int * dev_irq_filter; } ;



void
device_set_interrupt(device_t dev, driver_filter_t *filter,
    driver_intr_t *fn, void *arg)
{
 dev->dev_irq_filter = filter;
 dev->dev_irq_fn = fn;
 dev->dev_irq_arg = arg;
}
