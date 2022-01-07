
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t_Error ;
struct resource {int dummy; } ;


 int E_OK ;
 int powerpc_intr_mask (uintptr_t) ;
 uintptr_t rman_get_start (struct resource*) ;

t_Error
XX_DisableIntr(uintptr_t irq)
{
 struct resource *r;

 r = (struct resource *)irq;
 irq = rman_get_start(r);

 powerpc_intr_mask(irq);

 return (E_OK);
}
