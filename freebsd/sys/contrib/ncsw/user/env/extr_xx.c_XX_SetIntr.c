
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int t_Isr ;
typedef int t_Handle ;
typedef int t_Error ;
struct resource {int dummy; } ;
typedef int device_t ;
struct TYPE_2__ {int flags; int cookie; int arg; int * handler; } ;


 int E_BUSY ;
 int E_OK ;
 unsigned int INTR_EXCL ;
 unsigned int INTR_MPSAFE ;
 unsigned int INTR_TYPE_NET ;
 scalar_t__ XX_FmanNeedsIntrFix (uintptr_t) ;
 int XX_INTR_FLAG_PREALLOCATED ;
 TYPE_1__* XX_IntrInfo ;
 scalar_t__ XX_IsPortalIntr (uintptr_t) ;
 int bus_setup_intr (int ,struct resource*,unsigned int,int *,int *,int ,int *) ;
 int powerpc_bind_intr (uintptr_t,int ) ;
 int rman_get_device (struct resource*) ;
 uintptr_t rman_get_start (struct resource*) ;

t_Error
XX_SetIntr(uintptr_t irq, t_Isr *f_Isr, t_Handle handle)
{
 device_t dev;
 struct resource *r;
 unsigned int flags;
 int err;

 r = (struct resource *)irq;
 dev = rman_get_device(r);
 irq = rman_get_start(r);


 if (XX_IntrInfo[irq].flags & XX_INTR_FLAG_PREALLOCATED) {
  if (XX_IntrInfo[irq].handler != ((void*)0))
   return (E_BUSY);

  XX_IntrInfo[irq].handler = f_Isr;
  XX_IntrInfo[irq].arg = handle;

  return (E_OK);
 }

 flags = INTR_TYPE_NET | INTR_MPSAFE;


 if (XX_IsPortalIntr(irq))
  flags |= INTR_EXCL;

 err = bus_setup_intr(dev, r, flags, ((void*)0), f_Isr, handle,
      &XX_IntrInfo[irq].cookie);
 if (err)
  goto finish;
finish:
 return (err);
}
