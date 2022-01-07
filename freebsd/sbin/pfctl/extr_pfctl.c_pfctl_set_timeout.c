
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pfctl {int* timeout; int* timeout_set; int opts; } ;
struct TYPE_2__ {size_t timeout; int * name; } ;


 int PFCTL_FLAG_OPTION ;
 int PF_OPT_VERBOSE ;
 int loadopt ;
 TYPE_1__* pf_timeouts ;
 int printf (char*,char const*,int) ;
 scalar_t__ strcasecmp (char const*,int *) ;
 int warnx (char*) ;

int
pfctl_set_timeout(struct pfctl *pf, const char *opt, int seconds, int quiet)
{
 int i;

 if ((loadopt & PFCTL_FLAG_OPTION) == 0)
  return (0);

 for (i = 0; pf_timeouts[i].name; i++) {
  if (strcasecmp(opt, pf_timeouts[i].name) == 0) {
   pf->timeout[pf_timeouts[i].timeout] = seconds;
   pf->timeout_set[pf_timeouts[i].timeout] = 1;
   break;
  }
 }

 if (pf_timeouts[i].name == ((void*)0)) {
  warnx("Bad timeout name.");
  return (1);
 }


 if (pf->opts & PF_OPT_VERBOSE && ! quiet)
  printf("set timeout %s %d\n", opt, seconds);

 return (0);
}
