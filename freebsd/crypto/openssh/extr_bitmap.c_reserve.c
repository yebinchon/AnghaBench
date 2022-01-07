
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct bitmap {size_t top; size_t len; int * d; } ;
typedef int BITMAP_WTYPE ;


 int BITMAP_BITS ;
 int BITMAP_BYTES ;
 int BITMAP_MAX ;
 int * recallocarray (int *,size_t,size_t,int ) ;

__attribute__((used)) static int
reserve(struct bitmap *b, u_int n)
{
 BITMAP_WTYPE *tmp;
 size_t nlen;

 if (b->top >= b->len || n > BITMAP_MAX)
  return -1;
 nlen = (n / BITMAP_BITS) + 1;
 if (b->len < nlen) {
  if ((tmp = recallocarray(b->d, b->len,
      nlen, BITMAP_BYTES)) == ((void*)0))
   return -1;
  b->d = tmp;
  b->len = nlen;
 }
 return 0;
}
