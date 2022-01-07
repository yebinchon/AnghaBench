
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
struct pcpu {int dummy; } ;
typedef int ssize_t ;
typedef int kvm_t ;


 int kvm_native (int *) ;
 int kvm_read (int *,uintptr_t,void*,size_t) ;

ssize_t
kvm_read_zpcpu(kvm_t *kd, u_long base, void *buf, size_t size, int cpu)
{

 if (!kvm_native(kd))
  return (-1);
 return (kvm_read(kd, (uintptr_t)(base + sizeof(struct pcpu) * cpu),
     buf, size));
}
