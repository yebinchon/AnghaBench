
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ __tlb_wired_index () ;
 int __tlb_write_index (scalar_t__,int,int ,int ,int ) ;
 scalar_t__ cvmx_core_get_tlb_entries () ;

void cvmx_tlb_free_runtime_entry(uint32_t tlbi)
{

    if ((tlbi < (uint32_t)cvmx_core_get_tlb_entries()) && (tlbi >= __tlb_wired_index())) {
        __tlb_write_index(tlbi, 0xffffffff80000000ULL, 0, 0, 0);
    }
}
