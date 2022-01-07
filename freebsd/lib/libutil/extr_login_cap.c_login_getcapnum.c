
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int rlim_t ;
struct TYPE_3__ {int lc_class; int * lc_cap; } ;
typedef TYPE_1__ login_cap_t ;


 scalar_t__ ERANGE ;
 int LOG_WARNING ;
 int RLIM_INFINITY ;
 int cgetnum (int *,char const*,long*) ;
 int cgetstr (int *,char const*,char**) ;
 scalar_t__ errno ;
 scalar_t__ isinfinite (char*) ;
 int strtoq (char*,char**,int ) ;
 int syslog (int ,char*,int ,char const*,char*) ;

rlim_t
login_getcapnum(login_cap_t *lc, const char *cap, rlim_t def, rlim_t error)
{
    char *ep, *res;
    int r;
    rlim_t val;

    if (lc == ((void*)0) || lc->lc_cap == ((void*)0))
 return def;




    if ((r = cgetstr(lc->lc_cap, cap, &res)) == -1) {
 long lval;

 if ((r = cgetnum(lc->lc_cap, cap, &lval)) == -1)
     return def;
 else if (r >= 0)
     return (rlim_t)lval;
    }

    if (r < 0) {
 errno = ERANGE;
 return error;
    }

    if (isinfinite(res))
 return RLIM_INFINITY;

    errno = 0;
    val = strtoq(res, &ep, 0);
    if (ep == ((void*)0) || ep == res || errno != 0) {
 syslog(LOG_WARNING, "login_getcapnum: class '%s' bad value %s=%s",
        lc->lc_class, cap, res);
 errno = ERANGE;
 return error;
    }

    return val;
}
