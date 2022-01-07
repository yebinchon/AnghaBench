
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int v_object; } ;
typedef TYPE_1__ vnode_t ;
typedef int vm_page_t ;
typedef int vm_object_t ;
typedef int int64_t ;


 int OFF_TO_IDX (int ) ;
 int VM_ALLOC_IGN_SBUSY ;
 int VM_ALLOC_NOBUSY ;
 int VM_ALLOC_NOCREAT ;
 int VM_ALLOC_WIRED ;
 int vm_page_grab_valid (int *,int ,int ,int) ;
 int zfs_vmobject_assert_wlocked (int ) ;

__attribute__((used)) static vm_page_t
page_wire(vnode_t *vp, int64_t start)
{
 vm_object_t obj;
 vm_page_t m;

 obj = vp->v_object;
 zfs_vmobject_assert_wlocked(obj);

 vm_page_grab_valid(&m, obj, OFF_TO_IDX(start), VM_ALLOC_NOCREAT |
     VM_ALLOC_WIRED | VM_ALLOC_IGN_SBUSY | VM_ALLOC_NOBUSY);
 return (m);
}
