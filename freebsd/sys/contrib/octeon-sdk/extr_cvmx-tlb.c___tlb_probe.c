
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CVMX_EHB ;
 int CVMX_MF_TLB_INDEX (int) ;
 int CVMX_MT_ENTRY_HIGH (int ) ;
 int CVMX_TLBP ;

__attribute__((used)) static inline int __tlb_probe(uint64_t hi){
    int index;
    CVMX_EHB;
    CVMX_MT_ENTRY_HIGH(hi);
    CVMX_TLBP;
    CVMX_EHB;

    CVMX_MF_TLB_INDEX(index);

    if (index < 0) index = -1;

    return index;
}
