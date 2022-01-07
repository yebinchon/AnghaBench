
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_char ;
struct bitmap {int top; int len; size_t* d; } ;


 size_t BITMAP_BYTES ;
 size_t bitmap_nbytes (struct bitmap*) ;

int
bitmap_to_string(struct bitmap *b, void *p, size_t l)
{
 u_char *s = (u_char *)p;
 size_t i, j, k, need = bitmap_nbytes(b);

 if (l < need || b->top >= b->len)
  return -1;
 if (l > need)
  l = need;

 for (i = k = 0; i < b->top + 1; i++) {
  for (j = 0; j < BITMAP_BYTES; j++) {
   if (k >= l)
    break;
   s[need - 1 - k++] = (b->d[i] >> (j * 8)) & 0xff;
  }
 }
 return 0;
}
