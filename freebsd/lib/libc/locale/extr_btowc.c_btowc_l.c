
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wint_t ;
typedef int wchar_t ;
typedef int mbstate_t ;
typedef int locale_t ;
struct TYPE_2__ {int (* __mbrtowc ) (int *,char*,int,int *) ;} ;


 int EOF ;
 int FIX_LOCALE (int ) ;
 int WEOF ;
 TYPE_1__* XLOCALE_CTYPE (int ) ;
 int stub1 (int *,char*,int,int *) ;

wint_t
btowc_l(int c, locale_t l)
{
 static const mbstate_t initial;
 mbstate_t mbs = initial;
 char cc;
 wchar_t wc;
 FIX_LOCALE(l);

 if (c == EOF)
  return (WEOF);





 cc = (char)c;
 if (XLOCALE_CTYPE(l)->__mbrtowc(&wc, &cc, 1, &mbs) > 1)
  return (WEOF);
 return (wc);
}
