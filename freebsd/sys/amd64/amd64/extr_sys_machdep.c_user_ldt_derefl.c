
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef scalar_t__ vm_offset_t ;
struct user_segment_descriptor {int dummy; } ;
struct proc_ldt {scalar_t__ ldt_refcnt; scalar_t__ ldt_base; } ;


 int M_SUBPROC ;
 int free (struct proc_ldt*,int ) ;
 int kmem_free (scalar_t__,int) ;
 int max_ldt_segment ;
 int pmap_pti_remove_kva (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
user_ldt_derefl(struct proc_ldt *pldt)
{
 vm_offset_t sva;
 vm_size_t sz;

 if (--pldt->ldt_refcnt == 0) {
  sva = (vm_offset_t)pldt->ldt_base;
  sz = max_ldt_segment * sizeof(struct user_segment_descriptor);
  pmap_pti_remove_kva(sva, sva + sz);
  kmem_free(sva, sz);
  free(pldt, M_SUBPROC);
 }
}
