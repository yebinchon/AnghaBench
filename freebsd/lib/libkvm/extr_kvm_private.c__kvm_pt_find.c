
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int uint64_t ;
typedef unsigned int uint32_t ;
typedef int off_t ;
struct TYPE_3__ {unsigned int* pt_map; unsigned int pt_map_size; unsigned int* pt_popcounts; unsigned int pt_sparse_size; int pt_sparse_off; } ;
typedef TYPE_1__ kvm_t ;


 unsigned int BITS_IN (unsigned int) ;
 unsigned int MIN (unsigned int,unsigned int) ;
 unsigned int NBBY ;
 unsigned int POPCOUNTS_IN (unsigned int) ;
 unsigned int POPCOUNT_BITS ;
 unsigned int popcount_bytes (unsigned int*,unsigned int,unsigned int) ;
 unsigned int uint8_t ;

off_t
_kvm_pt_find(kvm_t *kd, uint64_t pa, unsigned int page_size)
{
 uint64_t *bitmap = kd->pt_map;
 uint64_t pte_bit_id = pa / page_size;
 uint64_t pte_u64 = pte_bit_id / BITS_IN(*bitmap);
 uint64_t popcount_id = pte_bit_id / POPCOUNT_BITS;
 uint64_t pte_mask = 1ULL << (pte_bit_id % BITS_IN(*bitmap));
 uint64_t bitN;
 uint32_t count;


 if (pte_bit_id >= (kd->pt_map_size * NBBY) ||
     (bitmap[pte_u64] & pte_mask) == 0)
  return (-1);







 if ((pte_bit_id % POPCOUNT_BITS) < (POPCOUNT_BITS / 2)) {
  count = kd->pt_popcounts[popcount_id] + popcount_bytes(
      bitmap + popcount_id * POPCOUNTS_IN(*bitmap),
      0, pte_bit_id - popcount_id * POPCOUNT_BITS);
 } else {




  uint64_t pte_u64_bit_off = pte_u64 * BITS_IN(*bitmap);

  popcount_id++;
  bitN = MIN(popcount_id * POPCOUNT_BITS,
      kd->pt_map_size * BITS_IN(uint8_t));
  count = kd->pt_popcounts[popcount_id] - popcount_bytes(
      bitmap + pte_u64,
      pte_bit_id - pte_u64_bit_off, bitN - pte_u64_bit_off);
 }





 if (count >= (kd->pt_sparse_size / page_size))
  return (-1);

 return (kd->pt_sparse_off + (uint64_t)count * page_size);
}
