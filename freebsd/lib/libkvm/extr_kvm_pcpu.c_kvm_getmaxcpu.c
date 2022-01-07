
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kvm_t ;


 int _kvm_pcpu_clear () ;
 scalar_t__ _kvm_pcpu_init (int *) ;
 scalar_t__ maxcpu ;

int
kvm_getmaxcpu(kvm_t *kd)
{

 if (kd == ((void*)0)) {
  _kvm_pcpu_clear();
  return (0);
 }

 if (maxcpu == 0)
  if (_kvm_pcpu_init(kd) < 0)
   return (-1);
 return (maxcpu);
}
