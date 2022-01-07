
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct bitmap {scalar_t__ top; scalar_t__ len; size_t* d; } ;


 size_t BITMAP_BITS ;
 size_t BITMAP_WMASK ;

int
bitmap_test_bit(struct bitmap *b, u_int n)
{
 if (b->top >= b->len)
  return 0;
 if (b->len == 0 || (n / BITMAP_BITS) > b->top)
  return 0;
 return (b->d[n / BITMAP_BITS] >> (n & BITMAP_WMASK)) & 1;
}
