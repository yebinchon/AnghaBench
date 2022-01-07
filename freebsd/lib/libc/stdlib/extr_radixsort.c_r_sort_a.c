
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef size_t u_char ;
typedef size_t const* stack ;


 int SIZE ;
 int THRESHOLD ;
 int empty (size_t const**) ;
 int pop (size_t const**,int,int) ;
 int push (size_t const**,int,int) ;
 int simplesort (size_t const**,int,int,size_t const*,int) ;
 int swap (size_t const*,size_t const*,size_t const*) ;

__attribute__((used)) static void
r_sort_a(const u_char **a, int n, int i, const u_char *tr, u_int endch)
{
 static int count[256], nc, bmin;
 int c;
 const u_char **ak, *r;
 stack s[SIZE], *sp, *sp0, *sp1, temp;
 int *cp, bigc;
 const u_char **an, *t, **aj, **top[256];


 sp = s;
 push(a, n, i);
 while (!empty(s)) {
  pop(a, n, i);
  if (n < THRESHOLD) {
   simplesort(a, n, i, tr, endch);
   continue;
  }
  an = a + n;


  if (nc == 0) {
   bmin = 255;
   for (ak = a; ak < an;) {
    c = tr[(*ak++)[i]];
    if (++count[c] == 1 && c != endch) {
     if (c < bmin)
      bmin = c;
     nc++;
    }
   }
   if (sp + nc > s + SIZE) {
    r_sort_a(a, n, i, tr, endch);
    continue;
   }
  }






  if (nc == 1 && count[bmin] == n) {
   push(a, n, i+1);
   nc = count[bmin] = 0;
   continue;
  }
  sp0 = sp1 = sp;
  bigc = 2;
  if (endch == 0)
   top[0] = ak = a + count[0];
  else {
   ak = a;
   top[255] = an;
  }
  for (cp = count + bmin; nc > 0; cp++) {
   while (*cp == 0)
    cp++;
   if (*cp > 1) {
    if (*cp > bigc) {
     bigc = *cp;
     sp1 = sp;
    }
    push(ak, *cp, i+1);
   }
   top[cp-count] = ak += *cp;
   nc--;
  }
  swap(*sp0, *sp1, temp);
  for (aj = a; aj < an; *aj = r, aj += count[c], count[c] = 0)
   for (r = *aj; aj < (ak = --top[c = tr[r[i]]]);)
    swap(*ak, r, t);
 }
}
