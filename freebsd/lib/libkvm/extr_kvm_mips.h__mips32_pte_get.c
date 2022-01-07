
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int mips32_pte_t ;
typedef int kvm_t ;


 int _kvm32toh (int *,int ) ;
 int * _kvm_pmap_get (int *,int ,int) ;

__attribute__((used)) static inline mips32_pte_t
_mips32_pte_get(kvm_t *kd, u_long pteindex)
{
 mips32_pte_t *pte = _kvm_pmap_get(kd, pteindex, sizeof(*pte));

 return _kvm32toh(kd, *pte);
}
