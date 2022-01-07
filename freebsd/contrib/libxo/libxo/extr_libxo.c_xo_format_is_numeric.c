
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int FALSE ;
 int TRUE ;
 int * strchr (char*,char const) ;
 int xo_strnspn (char const*,int,char*) ;

__attribute__((used)) static int
xo_format_is_numeric (const char *fmt, ssize_t flen)
{
    if (flen <= 0 || *fmt++ != '%')
 return FALSE;
    flen -= 1;


    ssize_t spn = xo_strnspn(fmt, flen, "0123456789.*+ -");
    if (spn >= flen)
 return FALSE;

    fmt += spn;
    flen -= spn;


    spn = xo_strnspn(fmt, flen, "hljtqz");
    if (spn >= flen)
 return FALSE;

    fmt += spn;
    flen -= spn;

    if (flen != 1)
 return FALSE;

    return (strchr("diouDOUeEfFgG", *fmt) == ((void*)0)) ? FALSE : TRUE;
}
