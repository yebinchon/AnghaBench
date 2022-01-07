
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
login_getcaptime(login_cap_t *lc, const char *cap, rlim_t def, rlim_t error)
{
    char *res, *ep, *oval;
    int r;
    rlim_t tot;

    errno = 0;
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
 rlim_t tim = strtoq(res, &ep, 0);
 rlim_t mult = 1;

 if (ep == ((void*)0) || ep == res || errno != 0) {
 invalid:
     syslog(LOG_WARNING, "login_getcaptime: class '%s' bad value %s=%s",
     lc->lc_class, cap, oval);
     errno = ERANGE;
     return error;
 }

 switch (*ep++) {
 case 0:
     ep--;
     break;
 case 's': case 'S':
     break;
 case 'm': case 'M':
     mult = 60;
     break;
 case 'h': case 'H':
     mult = 60L * 60L;
     break;
 case 'd': case 'D':
     mult = 60L * 60L * 24L;
     break;
 case 'w': case 'W':
     mult = 60L * 60L * 24L * 7L;
     break;
 case 'y': case 'Y':
     mult = 60L * 60L * 24L * 365L;
     break;
 default:
     goto invalid;
 }
 res = ep;
 tot += rmultiply(tim, mult);
 if (errno)
     goto invalid;
    }

    return tot;
}
