
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int locale_t ;
typedef scalar_t__ __ct_rune_t ;
struct TYPE_6__ {size_t __nranges; TYPE_3__* __ranges; } ;
typedef TYPE_2__ _RuneRange ;
struct TYPE_7__ {scalar_t__ __min; scalar_t__ __max; scalar_t__ __map; } ;
typedef TYPE_3__ _RuneEntry ;
struct TYPE_8__ {TYPE_1__* runes; } ;
struct TYPE_5__ {TYPE_2__ __mapupper_ext; } ;


 scalar_t__ EOF ;
 int FIX_LOCALE (int ) ;
 TYPE_4__* XLOCALE_CTYPE (int ) ;

__ct_rune_t
___toupper_l(__ct_rune_t c, locale_t l)
{
 size_t lim;
 FIX_LOCALE(l);
 _RuneRange *rr = &XLOCALE_CTYPE(l)->runes->__mapupper_ext;
 _RuneEntry *base, *re;

 if (c < 0 || c == EOF)
  return(c);


 base = rr->__ranges;
 for (lim = rr->__nranges; lim != 0; lim >>= 1) {
  re = base + (lim >> 1);
  if (re->__min <= c && c <= re->__max)
  {
   return (re->__map + c - re->__min);
  }
  else if (c > re->__max) {
   base = re + 1;
   lim--;
  }
 }

 return(c);
}
