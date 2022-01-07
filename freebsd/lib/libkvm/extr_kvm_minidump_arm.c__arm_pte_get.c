
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int kvm_t ;
typedef int arm_pt_entry_t ;


 int _kvm32toh (int *,int ) ;
 int * _kvm_pmap_get (int *,int ,int) ;

__attribute__((used)) static arm_pt_entry_t
_arm_pte_get(kvm_t *kd, u_long pteindex)
{
 arm_pt_entry_t *pte = _kvm_pmap_get(kd, pteindex, sizeof(*pte));

 return _kvm32toh(kd, *pte);
}
