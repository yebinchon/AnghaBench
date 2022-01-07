
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int t_Error ;
struct resource {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int E_INVALID_STATE ;
 int XX_FreeIntr (uintptr_t) ;
 int XX_INTR_FLAG_PREALLOCATED ;
 TYPE_1__* XX_IntrInfo ;
 unsigned int rman_get_start (struct resource*) ;

t_Error
XX_DeallocIntr(uintptr_t irq)
{
 struct resource *r;
 unsigned int inum;

 r = (struct resource *)irq;
 inum = rman_get_start(r);

 if ((XX_IntrInfo[inum].flags & XX_INTR_FLAG_PREALLOCATED) == 0)
  return (E_INVALID_STATE);

 XX_IntrInfo[inum].flags = 0;
 return (XX_FreeIntr(irq));
}
