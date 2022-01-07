
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int u_long ;
typedef int kvm_t ;
typedef int c ;


 scalar_t__ _kvm_pcpu_init (int *) ;
 int kvm_read_zpcpu (int *,int ,scalar_t__*,int,int) ;
 int mp_ncpus ;

uint64_t
kvm_counter_u64_fetch(kvm_t *kd, u_long base)
{
 uint64_t r, c;

 if (mp_ncpus == 0)
  if (_kvm_pcpu_init(kd) < 0)
   return (0);

 r = 0;
 for (int i = 0; i < mp_ncpus; i++) {
  if (kvm_read_zpcpu(kd, base, &c, sizeof(c), i) != sizeof(c))
   return (0);
  r += c;
 }

 return (r);
}
