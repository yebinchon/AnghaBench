
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wint_t ;
struct TYPE_4__ {int* bmp; int invert; scalar_t__ icase; } ;
typedef TYPE_1__ cset ;


 int CHIN1 (TYPE_1__*,int) ;
 int NC ;
 int assert (int) ;
 int towlower (int) ;
 int towupper (int) ;

__attribute__((used)) static __inline int
CHIN(cset *cs, wint_t ch)
{

 assert(ch >= 0);
 if (ch < NC)
  return (((cs->bmp[ch >> 3] & (1 << (ch & 7))) != 0) ^
      cs->invert);
 else if (cs->icase)
  return (CHIN1(cs, ch) || CHIN1(cs, towlower(ch)) ||
      CHIN1(cs, towupper(ch)));
 else
  return (CHIN1(cs, ch));
}
