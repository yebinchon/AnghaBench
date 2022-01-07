
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct bitmap {size_t top; size_t* d; } ;
typedef size_t BITMAP_WTYPE ;


 size_t BITMAP_BITS ;
 size_t BITMAP_WMASK ;
 int reserve (struct bitmap*,size_t) ;

int
bitmap_set_bit(struct bitmap *b, u_int n)
{
 int r;
 size_t offset;

 if ((r = reserve(b, n)) != 0)
  return r;
 offset = n / BITMAP_BITS;
 if (offset > b->top)
  b->top = offset;
 b->d[offset] |= (BITMAP_WTYPE)1 << (n & BITMAP_WMASK);
 return 0;
}
