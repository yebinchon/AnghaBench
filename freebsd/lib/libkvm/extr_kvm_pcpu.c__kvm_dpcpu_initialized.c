
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dpcpu_initialized; } ;
typedef TYPE_1__ kvm_t ;


 int _kvm_dpcpu_init (TYPE_1__*) ;

int
_kvm_dpcpu_initialized(kvm_t *kd, int intialize)
{

 if (kd->dpcpu_initialized || !intialize)
  return (kd->dpcpu_initialized);

 (void)_kvm_dpcpu_init(kd);

 return (kd->dpcpu_initialized);
}
