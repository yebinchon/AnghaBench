
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * lc_cap; } ;
typedef TYPE_1__ login_cap_t ;


 int cgetstr (int *,char const*,char**) ;

const char *
login_getcapstr(login_cap_t *lc, const char *cap, const char *def, const char *error)
{
    char *res;
    int ret;

    if (lc == ((void*)0) || cap == ((void*)0) || lc->lc_cap == ((void*)0) || *cap == '\0')
 return def;

    if ((ret = cgetstr(lc->lc_cap, cap, &res)) == -1)
 return def;
    return (ret >= 0) ? res : error;
}
