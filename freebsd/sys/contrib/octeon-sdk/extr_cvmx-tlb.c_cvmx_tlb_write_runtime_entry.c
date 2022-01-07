
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CVMX_MF_TLB_WIRED (int) ;
 int cvmx_tlb_write_entry (int,int ,int ,int ,int ) ;

void cvmx_tlb_write_runtime_entry(int index, uint64_t vaddr, uint64_t paddr,
                          uint64_t size, uint64_t tlb_flags)
{

    int wired_index;
    CVMX_MF_TLB_WIRED(wired_index);

    if (index >= wired_index) {
 cvmx_tlb_write_entry(index, vaddr, paddr, size, tlb_flags);
    }

}
