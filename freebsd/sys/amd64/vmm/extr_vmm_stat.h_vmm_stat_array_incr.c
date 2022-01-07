
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct vmm_stat_type {int index; int nelems; } ;
struct vm {int dummy; } ;


 scalar_t__* vcpu_stats (struct vm*,int) ;

__attribute__((used)) static void __inline
vmm_stat_array_incr(struct vm *vm, int vcpu, struct vmm_stat_type *vst,
      int statidx, uint64_t x)
{
}
