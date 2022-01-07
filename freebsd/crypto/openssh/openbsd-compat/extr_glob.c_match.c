
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* isctype ) (int) ;} ;
typedef int Char ;


 int EOS ;
 int GLOB_NOSPACE ;

 int M_CLASS ;
 int M_END ;
 int M_MASK ;
 int M_NOT ;

 int M_RNG ;

 int NCCLASSES ;
 TYPE_1__* cclasses ;
 int stub1 (int) ;

__attribute__((used)) static int
match(Char *name, Char *pat, Char *patend, int recur)
{
 int ok, negate_range;
 Char c, k;

 if (recur-- == 0)
  return(GLOB_NOSPACE);

 while (pat < patend) {
  c = *pat++;
  switch (c & M_MASK) {
  case 130:
   while (pat < patend && (*pat & M_MASK) == 130)
    pat++;
   if (pat == patend)
    return(1);
   do {
       if (match(name, pat, patend, recur))
        return(1);
   } while (*name++ != EOS);
   return(0);
  case 129:
   if (*name++ == EOS)
    return(0);
   break;
  case 128:
   ok = 0;
   if ((k = *name++) == EOS)
    return(0);
   if ((negate_range = ((*pat & M_MASK) == M_NOT)) != EOS)
    ++pat;
   while (((c = *pat++) & M_MASK) != M_END) {
    if ((c & M_MASK) == M_CLASS) {
     Char idx = *pat & M_MASK;
     if (idx < NCCLASSES &&
         cclasses[idx].isctype(k))
      ok = 1;
     ++pat;
    }
    if ((*pat & M_MASK) == M_RNG) {
     if (c <= k && k <= pat[1])
      ok = 1;
     pat += 2;
    } else if (c == k)
     ok = 1;
   }
   if (ok == negate_range)
    return(0);
   break;
  default:
   if (*name++ != c)
    return(0);
   break;
  }
 }
 return(*name == EOS);
}
