
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int __tlb_probe (int) ;

int cvmx_tlb_lookup(uint64_t vaddr) {
 uint64_t hi= (vaddr >> 13 ) << 13;

 return __tlb_probe(hi);
}
