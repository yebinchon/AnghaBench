
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t vm_offset_t ;
typedef size_t u_int ;
struct pv_addr {int pv_pa; int pv_va; } ;
typedef int pd_entry_t ;


 int L1_C_PROTO ;
 int L1_S_DOM (int ) ;
 size_t L1_S_SHIFT ;
 int PMAP_DOMAIN_KERNEL ;
 int PTE_SYNC (int*) ;
 int SLIST_INSERT_HEAD (int *,struct pv_addr*,int ) ;
 int kernel_pt_list ;
 int printf (char*,int,int) ;
 int pv_list ;

void
pmap_link_l2pt(vm_offset_t l1pt, vm_offset_t va, struct pv_addr *l2pv)
{
 pd_entry_t *pde = (pd_entry_t *) l1pt, proto;
 u_int slot = va >> L1_S_SHIFT;

 proto = L1_S_DOM(PMAP_DOMAIN_KERNEL) | L1_C_PROTO;





 pde[slot + 0] = proto | (l2pv->pv_pa + 0x000);

 PTE_SYNC(&pde[slot]);

 SLIST_INSERT_HEAD(&kernel_pt_list, l2pv, pv_list);


}
