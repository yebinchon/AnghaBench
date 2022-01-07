
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int CVMX_MT_TLB_INDEX (scalar_t__) ;
 int __tlb_read () ;
 scalar_t__ cvmx_core_get_tlb_entries () ;

__attribute__((used)) static inline int __tlb_read_index(uint32_t tlbi){

    if (tlbi >= (uint32_t)cvmx_core_get_tlb_entries()) {
        return -1;
    }

    CVMX_MT_TLB_INDEX(tlbi);
    __tlb_read();

    return 0;
}
