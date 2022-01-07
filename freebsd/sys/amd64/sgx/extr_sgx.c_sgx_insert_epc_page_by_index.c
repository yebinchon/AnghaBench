
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_pindex_t ;
typedef TYPE_1__* vm_page_t ;
typedef int vm_object_t ;
struct TYPE_4__ {int valid; } ;


 int VM_OBJECT_ASSERT_WLOCKED (int ) ;
 int VM_PAGE_BITS_ALL ;
 int vm_page_insert (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void
sgx_insert_epc_page_by_index(vm_page_t page, vm_object_t object,
    vm_pindex_t pidx)
{

 VM_OBJECT_ASSERT_WLOCKED(object);

 page->valid = VM_PAGE_BITS_ALL;
 vm_page_insert(page, object, pidx);
}
