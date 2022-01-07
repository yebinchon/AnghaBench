
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int vm_offset_t ;
struct pv_chunk {int dummy; } ;


 int PHYS_TO_VM_PAGE (int ) ;
 int PV_STAT (scalar_t__) ;
 int TAILQ_REMOVE (int *,struct pv_chunk*,int ) ;
 scalar_t__ _NPCPV ;
 int pc_chunk_count ;
 int pc_chunk_frees ;
 int pc_lru ;
 int pmap_kextract (int ) ;
 int pmap_pte2list_free (int *,int ) ;
 int pmap_qremove (int ,int) ;
 int pv_chunks ;
 int pv_entry_spare ;
 int pv_vafree ;
 int vm_page_free (int ) ;
 int vm_page_unwire_noq (int ) ;

__attribute__((used)) static void
free_pv_chunk(struct pv_chunk *pc)
{
 vm_page_t m;

 TAILQ_REMOVE(&pv_chunks, pc, pc_lru);
 PV_STAT(pv_entry_spare -= _NPCPV);
 PV_STAT(pc_chunk_count--);
 PV_STAT(pc_chunk_frees++);

 m = PHYS_TO_VM_PAGE(pmap_kextract((vm_offset_t)pc));
 pmap_qremove((vm_offset_t)pc, 1);
 vm_page_unwire_noq(m);
 vm_page_free(m);
 pmap_pte2list_free(&pv_vafree, (vm_offset_t)pc);
}
