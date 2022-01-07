
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pfctl {unsigned int* limit; int* limit_set; int opts; } ;
struct TYPE_2__ {size_t index; int * name; } ;


 int PF_OPT_VERBOSE ;
 TYPE_1__* pf_limits ;
 int printf (char*,char const*,unsigned int) ;
 scalar_t__ strcasecmp (char const*,int *) ;
 int warnx (char*) ;

int
pfctl_set_limit(struct pfctl *pf, const char *opt, unsigned int limit)
{
 int i;


 for (i = 0; pf_limits[i].name; i++) {
  if (strcasecmp(opt, pf_limits[i].name) == 0) {
   pf->limit[pf_limits[i].index] = limit;
   pf->limit_set[pf_limits[i].index] = 1;
   break;
  }
 }
 if (pf_limits[i].name == ((void*)0)) {
  warnx("Bad pool name.");
  return (1);
 }

 if (pf->opts & PF_OPT_VERBOSE)
  printf("set limit %s %d\n", opt, limit);

 return (0);
}
