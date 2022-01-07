
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char Char ;


 int ERR_NOHOME ;
 int ERR_UNKUSER ;
 int STRnonomatch ;
 char* Strnsave (char*,int) ;
 char* Strsave (char*) ;
 char* Strspl (char*,char*) ;
 scalar_t__ adrof (int ) ;
 int cleanup_push (char*,int (*) (char*)) ;
 int cleanup_until (char*) ;
 char* gethdir (char*) ;
 int short2str (char*) ;
 int stderror (int ,...) ;
 int xfree (char*) ;

__attribute__((used)) static Char *
globtilde(Char *s)
{
    Char *name, *u, *home, *res;

    u = s;
    for (s++; *s && *s != '/' && *s != ':'; s++)
 continue;
    name = Strnsave(u + 1, s - (u + 1));
    cleanup_push(name, xfree);
    home = gethdir(name);
    if (home == ((void*)0)) {
 if (adrof(STRnonomatch)) {
     cleanup_until(name);
     return u;
 }
 if (*name)
     stderror(ERR_UNKUSER, short2str(name));
 else
     stderror(ERR_NOHOME);
    }
    cleanup_until(name);
    if (home[0] == '/' && home[1] == '\0' && s[0] == '/')
 res = Strsave(s);
    else
 res = Strspl(home, s);
    xfree(home);
    xfree(u);
    return res;
}
