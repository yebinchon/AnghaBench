
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* deconst (char const*) ;
 char* memchr (char const*,char const,size_t const) ;
 scalar_t__ memcmp (char const*,char const*,size_t const) ;

__attribute__((used)) static char*
xmemmem(const char *hay, const size_t haysize,
 const char *needle, const size_t needlesize)
{
 const char *const eoh = hay + haysize;
 const char *const eon = needle + needlesize;
 const char *hp;
 const char *np;
 const char *cand;
 unsigned int hsum;
 unsigned int nsum;
 unsigned int eqp;





 if (needlesize == 0UL) {
  return deconst(hay);
 } else if ((hay = memchr(hay, *needle, haysize)) == ((void*)0)) {

  return ((void*)0);
 }





 for (hp = hay + 1U, np = needle + 1U, hsum = *hay, nsum = *hay, eqp = 1U;
      hp < eoh && np < eon;
      hsum ^= *hp, nsum ^= *np, eqp &= *hp == *np, hp++, np++);


 if (np < eon) {

  return ((void*)0);
 } else if (eqp) {

  return deconst(hay);
 }



 for (cand = hay; hp < eoh; hp++) {
  hsum ^= *cand++;
  hsum ^= *hp;





  if (hsum == nsum && memcmp(cand, needle, needlesize - 1U) == 0) {
   return deconst(cand);
  }
 }
 return ((void*)0);
}
