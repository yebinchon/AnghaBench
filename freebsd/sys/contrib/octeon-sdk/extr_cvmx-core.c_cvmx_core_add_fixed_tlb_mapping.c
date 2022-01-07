
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int cvmx_tlb_pagemask_t ;


 int TLB_DIRTY ;
 int TLB_GLOBAL ;
 int TLB_VALID ;
 int cvmx_core_add_fixed_tlb_mapping_bits (int,int,int,int ) ;

int cvmx_core_add_fixed_tlb_mapping(uint64_t vaddr, uint64_t page0_addr, uint64_t page1_addr, cvmx_tlb_pagemask_t page_mask)
{

    return(cvmx_core_add_fixed_tlb_mapping_bits(vaddr, page0_addr | TLB_DIRTY | TLB_VALID | TLB_GLOBAL, page1_addr | TLB_DIRTY | TLB_VALID | TLB_GLOBAL, page_mask));

}
