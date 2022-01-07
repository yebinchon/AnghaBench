
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int kvm_t ;
typedef int amd64_pte_t ;


 int * _kvm_pmap_get (int *,int ,int) ;
 int le64toh (int ) ;

__attribute__((used)) static amd64_pte_t
_amd64_pte_get(kvm_t *kd, u_long pteindex)
{
 amd64_pte_t *pte = _kvm_pmap_get(kd, pteindex, sizeof(*pte));

 return le64toh(*pte);
}
