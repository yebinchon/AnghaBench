
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
 int cgetstr (int *,char const*,char**) ;
 scalar_t__ errno ;
 scalar_t__ isinfinite (char*) ;
 int rmultiply (int,int) ;
 int strtoq (char*,char**,int ) ;
 int syslog (int ,char*,int ,char const*,char*) ;

rlim_t
login_getcapsize(login_cap_t *lc, const char *cap, rlim_t def, rlim_t error)
{
    char *ep, *res, *oval;
    int r;
    rlim_t tot;

    if (lc == ((void*)0) || lc->lc_cap == ((void*)0))
 return def;

    if ((r = cgetstr(lc->lc_cap, cap, &res)) == -1)
 return def;
    else if (r < 0) {
 errno = ERANGE;
 return error;
    }

    if (isinfinite(res))
 return RLIM_INFINITY;

    errno = 0;
    tot = 0;
    oval = res;
    while (*res) {
 rlim_t siz = strtoq(res, &ep, 0);
 rlim_t mult = 1;

 if (ep == ((void*)0) || ep == res || errno != 0) {
 invalid:
     syslog(LOG_WARNING, "login_getcapsize: class '%s' bad value %s=%s",
     lc->lc_class, cap, oval);
     errno = ERANGE;
     return error;
 }
 switch (*ep++) {
 case 0:
     ep--;
     break;
 case 'b': case 'B':
     mult = 512;
     break;
 case 'k': case 'K':
     mult = 1024;
     break;
 case 'm': case 'M':
     mult = 1024 * 1024;
     break;
 case 'g': case 'G':
     mult = 1024 * 1024 * 1024;
     break;
 case 't': case 'T':
     mult = 1024LL * 1024LL * 1024LL * 1024LL;
     break;
 default:
     goto invalid;
 }
 res = ep;
 tot += rmultiply(siz, mult);
 if (errno)
     goto invalid;
    }

    return tot;
}
