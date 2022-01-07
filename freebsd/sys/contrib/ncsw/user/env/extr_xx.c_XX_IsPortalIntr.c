
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {uintptr_t** portal_intr; } ;


 int MAXCPU ;
 TYPE_1__ XX_PInfo ;

__attribute__((used)) static bool
XX_IsPortalIntr(uintptr_t irq)
{
 int cpu, type;

 for (type = 0; type < 2; type++)
  for (cpu = 0; cpu < MAXCPU; cpu++)
   if (irq == XX_PInfo.portal_intr[type][cpu])
    return (1);

 return (0);
}
