
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int * vm_object_t ;
struct vmspace {int vm_map; } ;
struct sglist {int dummy; } ;


 int KASSERT (int,char*) ;
 int KERN_SUCCESS ;
 int M_WAITOK ;
 int OBJT_SG ;
 int VMFS_NO_SPACE ;
 int VM_MEMATTR_UNCACHEABLE ;
 int VM_OBJECT_WLOCK (int *) ;
 int VM_OBJECT_WUNLOCK (int *) ;
 int VM_PROT_RW ;
 int panic (char*,int) ;
 struct sglist* sglist_alloc (int,int ) ;
 int sglist_append_phys (struct sglist*,int ,size_t) ;
 int sglist_free (struct sglist*) ;
 int vm_map_find (int *,int *,int ,int *,size_t,int ,int ,int ,int ,int ) ;
 int vm_object_deallocate (int *) ;
 int vm_object_set_memattr (int *,int ) ;
 int * vm_pager_allocate (int ,struct sglist*,size_t,int ,int ,int *) ;

vm_object_t
vmm_mmio_alloc(struct vmspace *vmspace, vm_paddr_t gpa, size_t len,
        vm_paddr_t hpa)
{
 int error;
 vm_object_t obj;
 struct sglist *sg;

 sg = sglist_alloc(1, M_WAITOK);
 error = sglist_append_phys(sg, hpa, len);
 KASSERT(error == 0, ("error %d appending physaddr to sglist", error));

 obj = vm_pager_allocate(OBJT_SG, sg, len, VM_PROT_RW, 0, ((void*)0));
 if (obj != ((void*)0)) {







  VM_OBJECT_WLOCK(obj);
  error = vm_object_set_memattr(obj, VM_MEMATTR_UNCACHEABLE);
  VM_OBJECT_WUNLOCK(obj);
  if (error != KERN_SUCCESS) {
   panic("vmm_mmio_alloc: vm_object_set_memattr error %d",
    error);
  }
  error = vm_map_find(&vmspace->vm_map, obj, 0, &gpa, len, 0,
        VMFS_NO_SPACE, VM_PROT_RW, VM_PROT_RW, 0);
  if (error != KERN_SUCCESS) {
   vm_object_deallocate(obj);
   obj = ((void*)0);
  }
 }
 sglist_free(sg);

 return (obj);
}
