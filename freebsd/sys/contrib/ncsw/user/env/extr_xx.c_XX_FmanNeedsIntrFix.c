
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int XX_INTR_FLAG_FMAN_FIX ;
 TYPE_1__* XX_IntrInfo ;

__attribute__((used)) static bool
XX_FmanNeedsIntrFix(int irq)
{

 if (XX_IntrInfo[irq].flags & XX_INTR_FLAG_FMAN_FIX)
  return (1);

 return (0);
}
