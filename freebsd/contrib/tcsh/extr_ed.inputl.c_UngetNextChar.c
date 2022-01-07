
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int haveungetchar ;
 int ungetchar ;

void
UngetNextChar(Char cp)
{
    ungetchar = cp;
    haveungetchar = 1;
}
