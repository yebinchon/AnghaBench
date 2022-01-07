
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int cmp_t ;


 scalar_t__ CMP (int *,int *) ;
 int ** EVAL (int *) ;
 int THRESHOLD ;
 int insertionsort (int *,int,size_t,int ) ;
 int reverse (int *,int *) ;
 int swap (int *,int *) ;

void
setup(u_char *list1, u_char *list2, size_t n, size_t size, cmp_t cmp)
{
 int i, length, size2, tmp, sense;
 u_char *f1, *f2, *s, *l2, *last, *p2;

 size2 = size*2;
 if (n <= 5) {
  insertionsort(list1, n, size, cmp);
  *EVAL(list2) = (u_char*) list2 + n*size;
  return;
 }




 i = 4 + (n & 1);
 insertionsort(list1 + (n - i) * size, i, size, cmp);
 last = list1 + size * (n - i);
 *EVAL(list2 + (last - list1)) = list2 + n * size;
 for (f1 = list1, p2 = list2; f1 < last; f1 += size2) {
  p2 = *EVAL(p2) = p2 + size2;
  if (CMP (f1, f1 + size) > 0)
   swap(f1, f1 + size);
 }

}
