
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int __tlb_dump_index (scalar_t__) ;
 scalar_t__ cvmx_core_get_tlb_entries () ;

void cvmx_tlb_dump_all(void) {

    uint32_t tlbi;

    for (tlbi = 0; tlbi<= (uint32_t)cvmx_core_get_tlb_entries(); tlbi++ ) {
        __tlb_dump_index(tlbi);
    }
}
