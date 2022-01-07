
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int driver_intr_t ;
typedef int driver_filter_t ;
typedef int device_t ;


 int INTR_EXCL ;
 int RF_SHAREABLE ;
 int arm_setup_irqhandler (int ,int *,int *,void*,int,int,void**) ;
 int arm_unmask_irq (int) ;
 int device_get_nameunit (int ) ;
 int intr_setup_irq (int ,struct resource*,int *,int *,void*,int,void**) ;
 int rman_get_end (struct resource*) ;
 int rman_get_flags (struct resource*) ;
 int rman_get_start (struct resource*) ;

__attribute__((used)) static int
nexus_setup_intr(device_t dev, device_t child, struct resource *res, int flags,
    driver_filter_t *filt, driver_intr_t *intr, void *arg, void **cookiep)
{

 int irq;


 if ((rman_get_flags(res) & RF_SHAREABLE) == 0)
  flags |= INTR_EXCL;




 for (irq = rman_get_start(res); irq <= rman_get_end(res); irq++) {
  arm_setup_irqhandler(device_get_nameunit(child),
      filt, intr, arg, irq, flags, cookiep);
  arm_unmask_irq(irq);
 }
 return (0);

}
