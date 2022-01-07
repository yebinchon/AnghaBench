
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ __tlb_entry_is_free (scalar_t__) ;
 scalar_t__ __tlb_wired_index () ;
 scalar_t__ cvmx_core_get_tlb_entries () ;

int cvmx_tlb_allocate_runtime_entry(void)
{
    uint32_t i, ret = -1;

    for (i = __tlb_wired_index(); i< (uint32_t)cvmx_core_get_tlb_entries(); i++) {


        if (__tlb_entry_is_free(i)) {

         ret = i;
         break;
 }
    }

    return ret;
}
