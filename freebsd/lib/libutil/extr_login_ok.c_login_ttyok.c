
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttyent {char* ty_group; } ;
typedef int login_cap_t ;


 struct ttyent* getttynam (char const*) ;
 char** login_getcaplist (int *,char const*,int *) ;
 scalar_t__ login_str2inlist (char const**,char const*,char*,int ) ;

int
login_ttyok(login_cap_t *lc, const char *tty, const char *allowcap,
     const char *denycap)
{
    int rc = 1;

    if (lc != ((void*)0) && tty != ((void*)0) && *tty != '\0') {
 struct ttyent *te;
 char *grp;
 const char **ttl;

 te = getttynam(tty);
 grp = te ? te->ty_group : ((void*)0);
 ttl = login_getcaplist(lc, allowcap, ((void*)0));

 if (ttl != ((void*)0) && !login_str2inlist(ttl, tty, grp, 0))
     rc = 0;
 else {

     ttl = login_getcaplist(lc, denycap, ((void*)0));
     if (ttl != ((void*)0) && login_str2inlist(ttl, tty, grp, 0))
  rc = 0;
 }
    }

    return rc;
}
