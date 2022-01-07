
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* class_agents; } ;


 int MAX_CLASS ;
 TYPE_1__* ibmp ;

int mad_class_agent(int mgmt)
{
 if (mgmt < 1 || mgmt >= MAX_CLASS)
  return -1;
 return ibmp->class_agents[mgmt];
}
