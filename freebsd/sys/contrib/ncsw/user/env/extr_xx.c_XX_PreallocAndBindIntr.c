
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ t_Error ;
struct resource {int dummy; } ;
struct TYPE_3__ {unsigned int cpu; int flags; } ;


 scalar_t__ E_OK ;
 int XX_Dispatch ;
 int XX_INTR_FLAG_PREALLOCATED ;
 TYPE_1__* XX_IntrInfo ;
 scalar_t__ XX_SetIntr (uintptr_t,int ,TYPE_1__*) ;
 unsigned int rman_get_start (struct resource*) ;

t_Error
XX_PreallocAndBindIntr(uintptr_t irq, unsigned int cpu)
{
 struct resource *r;
 unsigned int inum;
 t_Error error;

 r = (struct resource *)irq;
 inum = rman_get_start(r);

 error = XX_SetIntr(irq, XX_Dispatch, &XX_IntrInfo[inum]);
 if (error != 0)
  return (error);

 XX_IntrInfo[inum].flags = XX_INTR_FLAG_PREALLOCATED;
 XX_IntrInfo[inum].cpu = cpu;

 return (E_OK);
}
