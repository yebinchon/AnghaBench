
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
typedef int mbstate_t ;
typedef int locale_t ;
struct TYPE_2__ {size_t (* __wcrtomb ) (char*,int ,int *) ;int wctomb; } ;


 int FIX_LOCALE (int ) ;
 TYPE_1__* XLOCALE_CTYPE (int ) ;
 size_t stub1 (char*,int ,int *) ;

int
wctomb_l(char *s, wchar_t wchar, locale_t locale)
{
 static const mbstate_t initial;
 size_t rval;
 FIX_LOCALE(locale);

 if (s == ((void*)0)) {

  XLOCALE_CTYPE(locale)->wctomb = initial;
  return (0);
 }
 if ((rval = XLOCALE_CTYPE(locale)->__wcrtomb(s, wchar,
     &(XLOCALE_CTYPE(locale)->wctomb))) == (size_t)-1)
  return (-1);
 return ((int)rval);
}
