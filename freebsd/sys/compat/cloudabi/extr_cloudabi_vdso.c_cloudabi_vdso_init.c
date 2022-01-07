
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef scalar_t__ vm_offset_t ;
typedef int vm_object_t ;
struct sysentvec {size_t sv_shared_page_len; scalar_t__ sv_shared_page_base; scalar_t__ sv_usrstack; int sv_shared_page_obj; scalar_t__ sv_maxuser; } ;
struct TYPE_4__ {int valid; } ;


 int MIN (size_t,size_t) ;
 int OBJT_PHYS ;
 size_t PAGE_SIZE ;
 int VM_ALLOC_NOBUSY ;
 int VM_ALLOC_ZERO ;
 int VM_OBJECT_WLOCK (int ) ;
 int VM_OBJECT_WUNLOCK (int ) ;
 int VM_PAGE_BITS_ALL ;
 int VM_PROT_DEFAULT ;
 size_t howmany (size_t,size_t) ;
 scalar_t__ kva_alloc (size_t) ;
 int kva_free (scalar_t__,size_t) ;
 int memcpy (void*,char*,int ) ;
 int pmap_qenter (scalar_t__,TYPE_1__**,int) ;
 int pmap_qremove (scalar_t__,int) ;
 TYPE_1__* vm_page_grab (int ,size_t,int) ;
 int vm_pager_allocate (int ,int ,size_t,int ,int ,int *) ;

void
cloudabi_vdso_init(struct sysentvec *sv, char *begin, char *end)
{
 vm_page_t m;
 vm_object_t obj;
 vm_offset_t addr;
 size_t i, pages, pages_length, vdso_length;


 vdso_length = end - begin;
 pages = howmany(vdso_length, PAGE_SIZE);
 pages_length = pages * PAGE_SIZE;


 obj = vm_pager_allocate(OBJT_PHYS, 0, pages_length,
     VM_PROT_DEFAULT, 0, ((void*)0));
 addr = kva_alloc(PAGE_SIZE);
 for (i = 0; i < pages; ++i) {
  VM_OBJECT_WLOCK(obj);
  m = vm_page_grab(obj, i, VM_ALLOC_NOBUSY | VM_ALLOC_ZERO);
  m->valid = VM_PAGE_BITS_ALL;
  VM_OBJECT_WUNLOCK(obj);

  pmap_qenter(addr, &m, 1);
  memcpy((void *)addr, begin + i * PAGE_SIZE,
      MIN(vdso_length - i * PAGE_SIZE, PAGE_SIZE));
  pmap_qremove(addr, 1);
 }
 kva_free(addr, PAGE_SIZE);





 sv->sv_shared_page_base = sv->sv_maxuser - pages_length;
 sv->sv_shared_page_len = pages_length;
 sv->sv_shared_page_obj = obj;
 sv->sv_usrstack = sv->sv_shared_page_base;
}
