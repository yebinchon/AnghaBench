
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int dummy; } ;
typedef int locale_t ;


 int FIX_LOCALE (int ) ;
 int IN_NONE ;
 int IN_SOME ;
 int IN_THIS ;
 int YEAR_2000_NAME ;
 char* _fmt (char*,struct tm const*,char*,char*,int*,int ) ;
 int fprintf_l (int ,int ,char*,...) ;
 int fputs (char*,int ) ;
 int * getenv (int ) ;
 int stderr ;
 int tzset () ;

size_t
strftime_l(char * __restrict s, size_t maxsize, const char * __restrict format,
    const struct tm * __restrict t, locale_t loc)
{
 char * p;
 int warn;
 FIX_LOCALE(loc);

 tzset();
 warn = IN_NONE;
 p = _fmt(((format == ((void*)0)) ? "%c" : format), t, s, s + maxsize, &warn, loc);

 if (warn != IN_NONE && getenv(YEAR_2000_NAME) != ((void*)0)) {
  (void) fprintf_l(stderr, loc, "\n");
  if (format == ((void*)0))
   (void) fputs("NULL strftime format ", stderr);
  else (void) fprintf_l(stderr, loc, "strftime format \"%s\" ",
    format);
  (void) fputs("yields only two digits of years in ", stderr);
  if (warn == IN_SOME)
   (void) fputs("some locales", stderr);
  else if (warn == IN_THIS)
   (void) fputs("the current locale", stderr);
  else (void) fputs("all locales", stderr);
  (void) fputs("\n", stderr);
 }

 if (p == s + maxsize)
  return (0);
 *p = '\0';
 return p - s;
}
