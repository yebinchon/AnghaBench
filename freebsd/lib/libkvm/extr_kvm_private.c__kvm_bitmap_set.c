
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint8_t ;
typedef unsigned int u_long ;
struct kvm_bitmap {unsigned long* map; } ;



void
_kvm_bitmap_set(struct kvm_bitmap *bm, u_long pa, unsigned int page_size)
{
 u_long bm_index = pa / page_size;
 uint8_t *byte = &bm->map[bm_index / 8];

 *byte |= (1UL << (bm_index % 8));
}
