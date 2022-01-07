
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmap {scalar_t__ top; scalar_t__ len; scalar_t__* d; } ;
typedef int BITMAP_WTYPE ;


 int BITMAP_BITS ;
 int retop (struct bitmap*) ;

size_t
bitmap_nbits(struct bitmap *b)
{
 size_t bits;
 BITMAP_WTYPE w;

 retop(b);
 if (b->top >= b->len)
  return 0;
 if (b->len == 0 || (b->top == 0 && b->d[0] == 0))
  return 0;

 w = b->d[b->top];
 bits = (b->top + 1) * BITMAP_BITS;
 while (!(w & ((BITMAP_WTYPE)1 << (BITMAP_BITS - 1)))) {
  w <<= 1;
  bits--;
 }
 return bits;
}
