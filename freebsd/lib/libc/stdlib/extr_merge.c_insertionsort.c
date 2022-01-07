
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int cmp_t ;


 scalar_t__ CMP (int *,int *) ;
 int swap (int *,int *) ;

__attribute__((used)) static void
insertionsort(u_char *a, size_t n, size_t size, cmp_t cmp)
{
 u_char *ai, *s, *t, *u, tmp;
 int i;

 for (ai = a+size; --n >= 1; ai += size)
  for (t = ai; t > a; t -= size) {
   u = t - size;
   if (CMP(u, t) <= 0)
    break;
   swap(u, t);
  }
}
