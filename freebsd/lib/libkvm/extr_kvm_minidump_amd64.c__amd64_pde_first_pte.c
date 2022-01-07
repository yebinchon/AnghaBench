
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int kvm_t ;
typedef int amd64_pte_t ;
typedef int amd64_pde_t ;


 int AMD64_PAGE_SIZE ;
 int AMD64_PG_FRAME ;
 int * _kvm_map_get (int *,int,int ) ;
 int* _kvm_pmap_get (int *,int,int) ;

__attribute__((used)) static amd64_pte_t *
_amd64_pde_first_pte(kvm_t *kd, u_long pdeindex)
{
 u_long *pa;

 pa = _kvm_pmap_get(kd, pdeindex, sizeof(amd64_pde_t));
 if (pa == ((void*)0))
  return ((void*)0);
 return _kvm_map_get(kd, *pa & AMD64_PG_FRAME, AMD64_PAGE_SIZE);
}
