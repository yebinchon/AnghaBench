
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;


 int CVMX_MT_ENTRY_HIGH (int ) ;
 int CVMX_MT_ENTRY_LO_0 (int ) ;
 int CVMX_MT_ENTRY_LO_1 (int ) ;
 int CVMX_MT_PAGEMASK (int ) ;
 int CVMX_MT_TLB_INDEX (scalar_t__) ;
 int __tlb_write () ;
 scalar_t__ cvmx_core_get_tlb_entries () ;
 int cvmx_dprintf (char*,scalar_t__,int ,int ,int ,int ) ;

__attribute__((used)) static inline int __tlb_write_index(uint32_t tlbi,
               uint64_t hi, uint64_t lo0,
        uint64_t lo1, uint64_t pagemask)
{

    if (tlbi >= (uint32_t)cvmx_core_get_tlb_entries()) {
        return -1;
    }







    CVMX_MT_TLB_INDEX(tlbi);
    CVMX_MT_ENTRY_HIGH(hi);
    CVMX_MT_ENTRY_LO_0(lo0);
    CVMX_MT_ENTRY_LO_1(lo1);
    CVMX_MT_PAGEMASK(pagemask);
    __tlb_write();

    return 0;
}
