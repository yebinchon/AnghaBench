
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_pindex_t ;
typedef int vm_page_t ;
typedef int uint64_t ;
struct sgx_enclave {int object; } ;
struct epc_page {int phys; } ;


 int OFF_TO_IDX (int ) ;
 int PHYS_TO_VM_PAGE (int ) ;
 int VM_OBJECT_ASSERT_WLOCKED (int ) ;
 int sgx_insert_epc_page_by_index (int ,int ,int ) ;

__attribute__((used)) static void
sgx_insert_epc_page(struct sgx_enclave *enclave,
    struct epc_page *epc, uint64_t addr)
{
 vm_pindex_t pidx;
 vm_page_t page;

 VM_OBJECT_ASSERT_WLOCKED(enclave->object);

 pidx = OFF_TO_IDX(addr);
 page = PHYS_TO_VM_PAGE(epc->phys);

 sgx_insert_epc_page_by_index(page, enclave->object, pidx);
}
