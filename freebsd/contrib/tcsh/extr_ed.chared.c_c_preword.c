
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Char ;


 int Strchr (scalar_t__*,scalar_t__) ;
 scalar_t__* c_endword (scalar_t__*,scalar_t__*,int,scalar_t__*) ;

__attribute__((used)) static Char *
c_preword(Char *p, Char *low, int n, Char *delim)
{
  while (n--) {
    Char *prev = low;
    Char *new;

    while (prev < p) {
      if (!Strchr(delim, *prev) || *(prev-1) == (Char)'\\')
 break;
      prev++;
    }

    new = prev;

    while (new < p) {
      prev = new;
      new = c_endword(prev-1, p, 1, delim);
      new++;
      while (new <= p) {
 if (!Strchr(delim, *new) || *(new-1) == (Char)'\\')
   break;
 new++;
      }
    }

    p = prev;

  }
  if (p < low)
    p = low;
  return (p);
}
