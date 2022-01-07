
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmm_stat_type {int dummy; } ;
struct vm {int dummy; } ;


 int vmm_stat_array_incr (struct vm*,int,struct vmm_stat_type*,int ,int ) ;

__attribute__((used)) static void __inline
vmm_stat_incr(struct vm *vm, int vcpu, struct vmm_stat_type *vst, uint64_t x)
{




}
