
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ vnet_start; scalar_t__ vnet_stop; scalar_t__ vnet_base; int vnet_initialized; } ;
typedef TYPE_1__ kvm_t ;
typedef scalar_t__ kvaddr_t ;



kvaddr_t
_kvm_vnet_validaddr(kvm_t *kd, kvaddr_t value)
{

 if (value == 0)
  return (value);

 if (!kd->vnet_initialized)
  return (value);

 if (value < kd->vnet_start || value >= kd->vnet_stop)
  return (value);

 return (kd->vnet_base + value);
}
