
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int t_Error ;
struct resource {int dummy; } ;
typedef int device_t ;
struct TYPE_2__ {int flags; int cookie; int * arg; int * handler; } ;


 int E_INVALID_STATE ;
 int E_OK ;
 int XX_INTR_FLAG_PREALLOCATED ;
 TYPE_1__* XX_IntrInfo ;
 int bus_teardown_intr (int ,struct resource*,int ) ;
 int rman_get_device (struct resource*) ;
 uintptr_t rman_get_start (struct resource*) ;

t_Error
XX_FreeIntr(uintptr_t irq)
{
 device_t dev;
 struct resource *r;

 r = (struct resource *)irq;
 dev = rman_get_device(r);
 irq = rman_get_start(r);


 if (XX_IntrInfo[irq].flags & XX_INTR_FLAG_PREALLOCATED) {
  if (XX_IntrInfo[irq].handler == ((void*)0))
   return (E_INVALID_STATE);

  XX_IntrInfo[irq].handler = ((void*)0);
  XX_IntrInfo[irq].arg = ((void*)0);

  return (E_OK);
 }

 return (bus_teardown_intr(dev, r, XX_IntrInfo[irq].cookie));
}
