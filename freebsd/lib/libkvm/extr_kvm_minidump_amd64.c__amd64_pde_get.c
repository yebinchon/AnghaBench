
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int kvm_t ;
typedef int amd64_pde_t ;


 int * _kvm_pmap_get (int *,int ,int) ;
 int le64toh (int ) ;

__attribute__((used)) static amd64_pde_t
_amd64_pde_get(kvm_t *kd, u_long pdeindex)
{
 amd64_pde_t *pde = _kvm_pmap_get(kd, pdeindex, sizeof(*pde));

 return le64toh(*pde);
}
