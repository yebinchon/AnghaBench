
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CVMX_MF_TLB_WIRED (int ) ;

__attribute__((used)) static inline uint32_t __tlb_wired_index() {
    uint32_t tlbi;

    CVMX_MF_TLB_WIRED(tlbi);
    return tlbi;
}
