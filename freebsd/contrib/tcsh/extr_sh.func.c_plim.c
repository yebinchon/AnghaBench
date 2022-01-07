
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int rlim_max; int rlim_cur; } ;
struct limits {int limdiv; scalar_t__ limconst; int limscale; int limname; } ;
typedef int RLIM_TYPE ;


 scalar_t__ RLIMIT_CPU ;
 scalar_t__ RLIMIT_DATA ;
 scalar_t__ RLIMIT_FSIZE ;
 int RLIM_INFINITY ;
 int getrlimit (scalar_t__,struct rlimit*) ;
 int psecs (int) ;
 int ulimit (scalar_t__,int ) ;
 int xprintf (char*,...) ;
 int xputchar (char) ;

__attribute__((used)) static void
plim(struct limits *lp, int hard)
{



    RLIM_TYPE limit;
    int xdiv = lp->limdiv;

    xprintf("%-13.13s", lp->limname);


    limit = ulimit(lp->limconst, 0);
    if (lp->limconst == RLIMIT_FSIZE) {
 if (limit >= (RLIM_INFINITY / 512))
     limit = RLIM_INFINITY;
 else
     xdiv = (xdiv == 1024 ? 2 : 1);
    }


    if (limit == RLIM_INFINITY)
 xprintf("unlimited");
    else
 xprintf("%ld %s", (long) (limit / xdiv), lp->limscale);
    xputchar('\n');
}
