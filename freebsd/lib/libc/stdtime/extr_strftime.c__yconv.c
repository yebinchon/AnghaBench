
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int locale_t ;


 int const DIVISOR ;
 char* _add (char*,char*,char const* const) ;
 char* _conv (int,char*,char*,char const* const,int ) ;

__attribute__((used)) static char *
_yconv(const int a, const int b, const int convert_top, const int convert_yy,
    char *pt, const char * const ptlim, locale_t loc)
{
 register int lead;
 register int trail;


 trail = a % 100 + b % 100;
 lead = a / 100 + b / 100 + trail / 100;
 trail %= 100;
 if (trail < 0 && lead > 0) {
  trail += 100;
  --lead;
 } else if (lead < 0 && trail > 0) {
  trail -= 100;
  ++lead;
 }
 if (convert_top) {
  if (lead == 0 && trail < 0)
   pt = _add("-0", pt, ptlim);
  else pt = _conv(lead, "%02d", pt, ptlim, loc);
 }
 if (convert_yy)
  pt = _conv(((trail < 0) ? -trail : trail), "%02d", pt,
       ptlim, loc);
 return (pt);
}
