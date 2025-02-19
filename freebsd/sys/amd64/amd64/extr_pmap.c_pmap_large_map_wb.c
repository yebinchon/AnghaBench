
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_offset_t ;


 scalar_t__ DMAP_MIN_ADDRESS ;
 int KASSERT (int,char*) ;
 scalar_t__ LARGEMAP_MIN_ADDRESS ;
 int NBPML4 ;
 scalar_t__ dmaplimit ;
 int lm_ents ;
 int pmap_large_map_flush_range (scalar_t__,scalar_t__) ;
 int pmap_large_map_wb_fence () ;
 int pmap_large_map_wb_large (scalar_t__,scalar_t__) ;

void
pmap_large_map_wb(void *svap, vm_size_t len)
{
 vm_offset_t eva, sva;

 sva = (vm_offset_t)svap;
 eva = sva + len;
 pmap_large_map_wb_fence();
 if (sva >= DMAP_MIN_ADDRESS && eva <= DMAP_MIN_ADDRESS + dmaplimit) {
  pmap_large_map_flush_range(sva, len);
 } else {
  KASSERT(sva >= LARGEMAP_MIN_ADDRESS &&
      eva <= LARGEMAP_MIN_ADDRESS + lm_ents * NBPML4,
      ("pmap_large_map_wb: not largemap %#lx %#lx", sva, len));
  pmap_large_map_wb_large(sva, eva);
 }
 pmap_large_map_wb_fence();
}
