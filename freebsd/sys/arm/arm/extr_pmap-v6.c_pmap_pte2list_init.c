
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;


 int PAGE_SIZE ;
 int pmap_pte2list_free (scalar_t__*,scalar_t__) ;

__attribute__((used)) static void
pmap_pte2list_init(vm_offset_t *head, void *base, int npages)
{
 int i;
 vm_offset_t va;

 *head = 0;
 for (i = npages - 1; i >= 0; i--) {
  va = (vm_offset_t)base + i * PAGE_SIZE;
  pmap_pte2list_free(head, va);
 }
}
