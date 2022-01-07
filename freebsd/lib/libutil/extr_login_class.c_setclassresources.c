
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct rlimit {int rlim_max; int rlim_cur; } ;
struct login_res {char* what; int why; int (* who ) (TYPE_1__*,char*,int ,int ) ;} ;
typedef int rlim_t ;
struct TYPE_7__ {int lc_class; } ;
typedef TYPE_1__ login_cap_t ;


 int LOG_ERR ;
 int LOG_WARNING ;
 scalar_t__ getrlimit (int ,struct rlimit*) ;
 struct login_res* resources ;
 int setrlimit (int ,struct rlimit*) ;
 int sprintf (char*,char*,char*) ;
 int stub1 (TYPE_1__*,char*,int ,int ) ;
 int stub2 (TYPE_1__*,char*,int ,int ) ;
 int stub3 (TYPE_1__*,char*,int ,int ) ;
 int stub4 (TYPE_1__*,char*,int ,int ) ;
 int syslog (int ,char*,char*,...) ;

void
setclassresources(login_cap_t *lc)
{
    struct login_res *lr;

    if (lc == ((void*)0))
 return;

    for (lr = resources; lr->what != ((void*)0); ++lr) {
 struct rlimit rlim;
 if (getrlimit(lr->why, &rlim) != 0)
     syslog(LOG_ERR, "getting %s resource limit: %m", lr->what);
 else {
     char name_cur[40];
     char name_max[40];
     rlim_t rcur = rlim.rlim_cur;
     rlim_t rmax = rlim.rlim_max;

     sprintf(name_cur, "%s-cur", lr->what);
     sprintf(name_max, "%s-max", lr->what);

     rcur = (*lr->who)(lc, lr->what, rcur, rcur);
     rmax = (*lr->who)(lc, lr->what, rmax, rmax);
     rlim.rlim_cur = (*lr->who)(lc, name_cur, rcur, rcur);
     rlim.rlim_max = (*lr->who)(lc, name_max, rmax, rmax);

     if (setrlimit(lr->why, &rlim) == -1)
  syslog(LOG_WARNING, "set class '%s' resource limit %s: %m", lc->lc_class, lr->what);
 }
    }
}
