
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* xestring ;
 char* xstring ;

__attribute__((used)) static void
xaddchar(int c)
{
    if (xestring == xstring)
 *xstring = '\0';
    else
 *xstring++ = (char) c;
}
