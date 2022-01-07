
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char Char ;


 char* STRNULL ;
 int STRhome ;
 char* Strsave (char*) ;
 char* gettilde (char const*) ;
 char* varval (int ) ;

Char *
gethdir(const Char *home)
{
    Char *h;




    if (*home == '\0') {
 if ((h = varval(STRhome)) != STRNULL)
     return Strsave(h);
 else
     return ((void*)0);
    }




    if ((h = gettilde(home)) == ((void*)0))
 return ((void*)0);
    else
 return Strsave(h);
}
