
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct page* vm_page_t ;
typedef int vm_object_t ;
struct page {int dummy; } ;
typedef int gfp_t ;


 int EINVAL ;
 struct page* ERR_PTR (int ) ;
 int GFP_NOWAIT ;
 int VM_ALLOC_NOBUSY ;
 int VM_ALLOC_NORMAL ;
 int VM_ALLOC_WIRED ;
 int VM_OBJECT_WLOCK (int ) ;
 int VM_OBJECT_WUNLOCK (int ) ;
 int VM_PAGER_OK ;
 int panic (char*) ;
 int vm_page_grab_valid (struct page**,int ,int,int) ;

struct page *
linux_shmem_read_mapping_page_gfp(vm_object_t obj, int pindex, gfp_t gfp)
{
 vm_page_t page;
 int rv;

 if ((gfp & GFP_NOWAIT) != 0)
  panic("GFP_NOWAIT is unimplemented");

 VM_OBJECT_WLOCK(obj);
 rv = vm_page_grab_valid(&page, obj, pindex, VM_ALLOC_NORMAL |
     VM_ALLOC_NOBUSY | VM_ALLOC_WIRED);
 VM_OBJECT_WUNLOCK(obj);
 if (rv != VM_PAGER_OK)
  return (ERR_PTR(-EINVAL));
 return (page);
}
