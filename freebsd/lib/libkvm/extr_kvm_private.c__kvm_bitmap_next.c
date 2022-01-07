
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
struct kvm_bitmap {scalar_t__ size; unsigned int* map; } ;


 scalar_t__ CHAR_BIT ;
 scalar_t__ ULONG_MAX ;

int
_kvm_bitmap_next(struct kvm_bitmap *bm, u_long *idx)
{
 u_long first_invalid = bm->size * CHAR_BIT;

 if (*idx == ULONG_MAX)
  *idx = 0;
 else
  (*idx)++;


 for (; *idx < first_invalid; (*idx)++) {
  unsigned int mask = *idx % CHAR_BIT;
  if ((bm->map[*idx * CHAR_BIT] & mask) == 0)
   break;
 }

 return (*idx < first_invalid);
}
