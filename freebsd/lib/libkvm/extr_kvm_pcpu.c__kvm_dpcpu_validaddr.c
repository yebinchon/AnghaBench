
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dpcpu_start; scalar_t__ dpcpu_stop; scalar_t__ dpcpu_curoff; int dpcpu_initialized; } ;
typedef TYPE_1__ kvm_t ;
typedef scalar_t__ kvaddr_t ;



kvaddr_t
_kvm_dpcpu_validaddr(kvm_t *kd, kvaddr_t value)
{

 if (value == 0)
  return (value);

 if (!kd->dpcpu_initialized)
  return (value);

 if (value < kd->dpcpu_start || value >= kd->dpcpu_stop)
  return (value);

 return (kd->dpcpu_curoff + value);
}
