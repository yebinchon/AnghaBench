
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVMX_EHB ;
 int CVMX_TLBWI ;

__attribute__((used)) static inline void __tlb_write(void){

    CVMX_EHB;
    CVMX_TLBWI;
    CVMX_EHB;
}
