
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _nv {int dummy; } ;


 char* find_value (struct _nv*,int) ;

const char *
find_zero_bit(struct _nv *x, int value, int sz)
{
 int v, m;
 const char *s;

 v = 1;
 for (v = 1, m = 1 << (8 * sz); v < m; v *= 2) {
  if ((value & v) == 0)
   continue;
  if ((s = find_value(x, value & v)) != ((void*)0)) {
   value &= ~v;
   return (s);
  }
 }

 return (((void*)0));
}
