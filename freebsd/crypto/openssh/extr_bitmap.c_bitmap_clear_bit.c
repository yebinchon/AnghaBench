
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct bitmap {size_t top; size_t len; size_t* d; } ;
typedef size_t BITMAP_WTYPE ;


 size_t BITMAP_BITS ;
 size_t BITMAP_MAX ;
 size_t BITMAP_WMASK ;
 int retop (struct bitmap*) ;

void
bitmap_clear_bit(struct bitmap *b, u_int n)
{
 size_t offset;

 if (b->top >= b->len || n > BITMAP_MAX)
  return;
 offset = n / BITMAP_BITS;
 if (offset > b->top)
  return;
 b->d[offset] &= ~((BITMAP_WTYPE)1 << (n & BITMAP_WMASK));

 retop(b);
}
