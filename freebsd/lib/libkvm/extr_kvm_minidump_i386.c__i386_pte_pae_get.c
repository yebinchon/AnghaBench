
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int kvm_t ;
typedef int i386_pte_pae_t ;


 int * _kvm_pmap_get (int *,int ,int) ;
 int le64toh (int ) ;

__attribute__((used)) static i386_pte_pae_t
_i386_pte_pae_get(kvm_t *kd, u_long pteindex)
{
 i386_pte_pae_t *pte = _kvm_pmap_get(kd, pteindex, sizeof(*pte));

 return le64toh(*pte);
}
