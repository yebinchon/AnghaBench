
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int login_cap_t ;


 int FNM_CASEFOLD ;
 char** login_getcaplist (int *,char const*,int *) ;
 scalar_t__ login_str2inlist (char const**,char const*,char const*,int ) ;

int
login_hostok(login_cap_t *lc, const char *host, const char *ip,
      const char *allowcap, const char *denycap)
{
    int rc = 1;

    if (lc != ((void*)0) &&
 ((host != ((void*)0) && *host != '\0') || (ip != ((void*)0) && *ip != '\0'))) {
 const char **hl;

 hl = login_getcaplist(lc, allowcap, ((void*)0));
 if (hl != ((void*)0) && !login_str2inlist(hl, host, ip, FNM_CASEFOLD))
     rc = 0;
 else {

     hl = login_getcaplist(lc, denycap, ((void*)0));
     if (hl != ((void*)0) && login_str2inlist(hl, host, ip, FNM_CASEFOLD))
  rc = 0;
 }
    }

    return rc;
}
