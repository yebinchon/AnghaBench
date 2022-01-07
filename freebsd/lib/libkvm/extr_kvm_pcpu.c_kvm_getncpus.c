
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kvm_t ;


 scalar_t__ _kvm_pcpu_init (int *) ;
 scalar_t__ mp_ncpus ;

int
kvm_getncpus(kvm_t *kd)
{

 if (mp_ncpus == 0)
  if (_kvm_pcpu_init(kd) < 0)
   return (-1);
 return (mp_ncpus);
}
