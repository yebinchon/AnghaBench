
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfctl {int opts; int* limit; int* timeout_set; int* timeout; int hostid; scalar_t__ hostid_set; int ifname; scalar_t__ ifname_set; int debug; scalar_t__ debug_set; scalar_t__* limit_set; } ;


 int PFCTL_FLAG_OPTION ;
 size_t PFTM_ADAPTIVE_END ;
 size_t PFTM_ADAPTIVE_START ;
 int PFTM_MAX ;
 int PF_LIMIT_MAX ;
 size_t PF_LIMIT_STATES ;
 int PF_OPT_MERGE ;
 int loadopt ;
 scalar_t__ pfctl_load_debug (struct pfctl*,int ) ;
 scalar_t__ pfctl_load_hostid (struct pfctl*,int ) ;
 scalar_t__ pfctl_load_limit (struct pfctl*,int,int) ;
 scalar_t__ pfctl_load_logif (struct pfctl*,int ) ;
 scalar_t__ pfctl_load_timeout (struct pfctl*,int,int) ;

int
pfctl_load_options(struct pfctl *pf)
{
 int i, error = 0;

 if ((loadopt & PFCTL_FLAG_OPTION) == 0)
  return (0);


 for (i = 0; i < PF_LIMIT_MAX; i++) {
  if ((pf->opts & PF_OPT_MERGE) && !pf->limit_set[i])
   continue;
  if (pfctl_load_limit(pf, i, pf->limit[i]))
   error = 1;
 }





 if (pf->limit_set[PF_LIMIT_STATES] &&
     !pf->timeout_set[PFTM_ADAPTIVE_START] &&
     !pf->timeout_set[PFTM_ADAPTIVE_END]) {
  pf->timeout[PFTM_ADAPTIVE_START] =
   (pf->limit[PF_LIMIT_STATES] / 10) * 6;
  pf->timeout_set[PFTM_ADAPTIVE_START] = 1;
  pf->timeout[PFTM_ADAPTIVE_END] =
   (pf->limit[PF_LIMIT_STATES] / 10) * 12;
  pf->timeout_set[PFTM_ADAPTIVE_END] = 1;
 }


 for (i = 0; i < PFTM_MAX; i++) {
  if ((pf->opts & PF_OPT_MERGE) && !pf->timeout_set[i])
   continue;
  if (pfctl_load_timeout(pf, i, pf->timeout[i]))
   error = 1;
 }


 if (!(pf->opts & PF_OPT_MERGE) || pf->debug_set)
  if (pfctl_load_debug(pf, pf->debug))
   error = 1;


 if (!(pf->opts & PF_OPT_MERGE) || pf->ifname_set)
  if (pfctl_load_logif(pf, pf->ifname))
   error = 1;


 if (!(pf->opts & PF_OPT_MERGE) || pf->hostid_set)
  if (pfctl_load_hostid(pf, pf->hostid))
   error = 1;

 return (error);
}
