
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mbstate_t ;
typedef int locale_t ;
struct TYPE_2__ {size_t (* __mbrtowc ) (int *,char const*,size_t,int *) ;int mblen; } ;


 int FIX_LOCALE (int ) ;
 TYPE_1__* XLOCALE_CTYPE (int ) ;
 size_t stub1 (int *,char const*,size_t,int *) ;

int
mblen_l(const char *s, size_t n, locale_t locale)
{
 static const mbstate_t initial;
 size_t rval;
 FIX_LOCALE(locale);

 if (s == ((void*)0)) {

  XLOCALE_CTYPE(locale)->mblen = initial;
  return (0);
 }
 rval = XLOCALE_CTYPE(locale)->__mbrtowc(((void*)0), s, n,
     &(XLOCALE_CTYPE(locale)->mblen));
 if (rval == (size_t)-1 || rval == (size_t)-2)
  return (-1);
 return ((int)rval);
}
