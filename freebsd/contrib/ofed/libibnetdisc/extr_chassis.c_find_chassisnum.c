
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* chassis; } ;
typedef TYPE_1__ ibnd_fabric_t ;
struct TYPE_6__ {unsigned char chassisnum; struct TYPE_6__* next; } ;
typedef TYPE_2__ ibnd_chassis_t ;



__attribute__((used)) static ibnd_chassis_t *find_chassisnum(ibnd_fabric_t * fabric,
           unsigned char chassisnum)
{
 ibnd_chassis_t *current;

 for (current = fabric->chassis; current; current = current->next)
  if (current->chassisnum == chassisnum)
   return current;

 return ((void*)0);
}
