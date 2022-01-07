
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int CHAR_EOS ;

 int M_END ;
 int M_MASK ;
 int M_NOT ;

 int M_RNG ;


__attribute__((used)) static int
match(Char *name, Char *pat, Char *patend)
{
 int ok, negate_range;
 Char c, k;

 while (pat < patend) {
  c = *pat++;
  switch (c & M_MASK) {
  case 130:
   if (pat == patend)
    return(1);
   do
       if (match(name, pat, patend))
        return(1);
   while (*name++ != CHAR_EOS);
   return(0);
  case 129:
   if (*name++ == CHAR_EOS)
    return(0);
   break;
  case 128:
   ok = 0;
   if ((k = *name++) == CHAR_EOS)
    return(0);
   if ((negate_range = ((*pat & M_MASK) == M_NOT)) != CHAR_EOS)
    ++pat;
   while (((c = *pat++) & M_MASK) != M_END)
    if ((*pat & M_MASK) == M_RNG) {
     if (c <= k && k <= pat[1])
      ok = 1;
     pat += 2;
    } else if (c == k)
     ok = 1;
   if (ok == negate_range)
    return(0);
   break;
  default:
   if (*name++ != c)
    return(0);
   break;
  }
 }
 return(*name == CHAR_EOS);
}
