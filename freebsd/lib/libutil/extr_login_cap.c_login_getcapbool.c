
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * lc_cap; } ;
typedef TYPE_1__ login_cap_t ;


 int * cgetcap (int *,char const*,char) ;

int
login_getcapbool(login_cap_t *lc, const char *cap, int def)
{
    if (lc == ((void*)0) || lc->lc_cap == ((void*)0))
 return def;
    return (cgetcap(lc->lc_cap, cap, ':') != ((void*)0));
}
