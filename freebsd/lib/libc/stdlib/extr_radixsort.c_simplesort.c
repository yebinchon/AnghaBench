
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
typedef size_t u_char ;


 int swap (size_t const*,size_t const*,size_t const*) ;

__attribute__((used)) static inline void
simplesort(const u_char **a, int n, int b, const u_char *tr, u_int endch)
{
 u_char ch;
 const u_char **ak, **ai, *s, *t;

 for (ak = a+1; --n >= 1; ak++)
  for (ai = ak; ai > a; ai--) {
   for (s = ai[0] + b, t = ai[-1] + b;
       (ch = tr[*s]) != endch; s++, t++)
    if (ch != tr[*t])
     break;
   if (ch >= tr[*t])
    break;
   swap(ai[0], ai[-1], s);
  }
}
