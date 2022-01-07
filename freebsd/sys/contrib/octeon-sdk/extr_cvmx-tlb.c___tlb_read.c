
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVMX_EHB ;
 int CVMX_TLBR ;

__attribute__((used)) static inline void __tlb_read(void){
    CVMX_EHB;
    CVMX_TLBR;
    CVMX_EHB;
}
