
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_swap {int dummy; } ;
typedef int kvm_t ;


 scalar_t__ ISALIVE (int *) ;
 int kvm_getswapinfo_kvm (int *,struct kvm_swap*,int,int) ;
 int kvm_getswapinfo_sysctl (int *,struct kvm_swap*,int,int) ;
 scalar_t__ kvm_swap_nl_cached ;

int
kvm_getswapinfo(kvm_t *kd, struct kvm_swap *swap_ary, int swap_max, int flags)
{




 if (kd == ((void*)0)) {
  kvm_swap_nl_cached = 0;
  return(0);
 }

 if (ISALIVE(kd)) {
  return kvm_getswapinfo_sysctl(kd, swap_ary, swap_max, flags);
 } else {
  return kvm_getswapinfo_kvm(kd, swap_ary, swap_max, flags);
 }
}
