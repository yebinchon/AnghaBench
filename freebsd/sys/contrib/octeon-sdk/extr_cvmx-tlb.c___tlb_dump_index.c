
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;


 int CVMX_MF_ENTRY_HIGH (scalar_t__) ;
 int CVMX_MF_ENTRY_LO_0 (int) ;
 int CVMX_MF_ENTRY_LO_1 (int) ;
 int CVMX_MF_PAGEMASK (int) ;
 int PAGE_MASK ;
 scalar_t__ __tlb_entry_is_free (scalar_t__) ;
 int __tlb_read_index (scalar_t__) ;
 scalar_t__ cvmx_core_get_tlb_entries () ;
 int cvmx_dprintf (char*,int,...) ;

__attribute__((used)) static inline void __tlb_dump_index(uint32_t tlbi)
{
    if (tlbi < (uint32_t)cvmx_core_get_tlb_entries()) {

        if (__tlb_entry_is_free(tlbi)) {



        } else {
            uint64_t lo0, lo1, pgmask;
            uint32_t hi;





            __tlb_read_index(tlbi);

            CVMX_MF_ENTRY_HIGH(hi);
            CVMX_MF_ENTRY_LO_0(lo0);
            CVMX_MF_ENTRY_LO_1(lo1);
            CVMX_MF_PAGEMASK(pgmask);
        }
    }
}
