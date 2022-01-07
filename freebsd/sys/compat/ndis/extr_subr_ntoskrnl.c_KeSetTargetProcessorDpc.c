
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {scalar_t__ k_num; } ;
typedef TYPE_1__ kdpc ;


 scalar_t__ mp_ncpus ;

void
KeSetTargetProcessorDpc(kdpc *dpc, uint8_t cpu)
{
 if (cpu > mp_ncpus)
  return;

 dpc->k_num = cpu;
}
