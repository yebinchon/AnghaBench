
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ wint_t ;
struct TYPE_5__ {int* bmp; int invert; unsigned int nwides; scalar_t__* wides; unsigned int nranges; unsigned int ntypes; int * types; TYPE_1__* ranges; scalar_t__ icase; } ;
typedef TYPE_2__ cset ;
struct TYPE_4__ {scalar_t__ min; scalar_t__ max; } ;


 scalar_t__ NC ;
 int assert (int) ;
 scalar_t__ iswctype (scalar_t__,int ) ;
 scalar_t__ towlower (scalar_t__) ;
 scalar_t__ towupper (scalar_t__) ;

__attribute__((used)) static int
CHIN1(cset *cs, wint_t ch)
{
 unsigned int i;

 assert(ch >= 0);
 if (ch < NC)
  return (((cs->bmp[ch >> 3] & (1 << (ch & 7))) != 0) ^
      cs->invert);
 for (i = 0; i < cs->nwides; i++) {
  if (cs->icase) {
   if (ch == towlower(cs->wides[i]) ||
       ch == towupper(cs->wides[i]))
    return (!cs->invert);
  } else if (ch == cs->wides[i])
   return (!cs->invert);
 }
 for (i = 0; i < cs->nranges; i++)
  if (cs->ranges[i].min <= ch && ch <= cs->ranges[i].max)
   return (!cs->invert);
 for (i = 0; i < cs->ntypes; i++)
  if (iswctype(ch, cs->types[i]))
   return (!cs->invert);
 return (cs->invert);
}
