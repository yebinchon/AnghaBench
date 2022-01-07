
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vnet_initialized; } ;
typedef TYPE_1__ kvm_t ;


 int _kvm_vnet_selectpid (TYPE_1__*,int ) ;
 int getpid () ;

int
_kvm_vnet_initialized(kvm_t *kd, int intialize)
{

 if (kd->vnet_initialized || !intialize)
  return (kd->vnet_initialized);

 (void) _kvm_vnet_selectpid(kd, getpid());

 return (kd->vnet_initialized);
}
