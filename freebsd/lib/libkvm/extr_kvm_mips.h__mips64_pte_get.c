
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int mips64_pte_t ;
typedef int kvm_t ;


 int _kvm64toh (int *,int ) ;
 int * _kvm_pmap_get (int *,int ,int) ;

__attribute__((used)) static inline mips64_pte_t
_mips64_pte_get(kvm_t *kd, u_long pteindex)
{
 mips64_pte_t *pte = _kvm_pmap_get(kd, pteindex, sizeof(*pte));

 return _kvm64toh(kd, *pte);
}
