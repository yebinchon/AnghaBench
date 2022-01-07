
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef unsigned int uint32_t ;
typedef int cvmx_tlb_pagemask_t ;


 int CVMX_EHB ;
 int CVMX_MF_TLB_WIRED (unsigned int) ;
 int CVMX_MT_ENTRY_HIGH (int ) ;
 int CVMX_MT_ENTRY_LO_0 (int ) ;
 int CVMX_MT_ENTRY_LO_1 (int ) ;
 int CVMX_MT_PAGEMASK (int ) ;
 int CVMX_MT_TLB_INDEX (unsigned int) ;
 int CVMX_MT_TLB_WIRED (unsigned int) ;
 int CVMX_TLBWI ;
 scalar_t__ cvmx_core_get_tlb_entries () ;

int cvmx_core_add_wired_tlb_entry(uint64_t hi, uint64_t lo0, uint64_t lo1, cvmx_tlb_pagemask_t page_mask)
{
    uint32_t index;

    CVMX_MF_TLB_WIRED(index);
    if (index >= (unsigned int)cvmx_core_get_tlb_entries())
    {
        return(-1);
    }
    CVMX_MT_ENTRY_HIGH(hi);
    CVMX_MT_ENTRY_LO_0(lo0);
    CVMX_MT_ENTRY_LO_1(lo1);
    CVMX_MT_PAGEMASK(page_mask);
    CVMX_MT_TLB_INDEX(index);
    CVMX_MT_TLB_WIRED(index + 1);
    CVMX_EHB;
    CVMX_TLBWI;
    CVMX_EHB;
    return(index);
}
