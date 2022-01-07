
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pfctl {int opts; } ;
struct pf_hint {int timeout; scalar_t__ name; } ;
struct TYPE_2__ {struct pf_hint* hint; scalar_t__ name; } ;


 int PFCTL_FLAG_OPTION ;
 int PF_OPT_VERBOSE ;
 int loadopt ;
 TYPE_1__* pf_hints ;
 int pfctl_set_timeout (struct pfctl*,scalar_t__,int ,int) ;
 int printf (char*,char const*) ;
 scalar_t__ strcasecmp (char const*,scalar_t__) ;
 int warnx (char*) ;

int
pfctl_set_optimization(struct pfctl *pf, const char *opt)
{
 const struct pf_hint *hint;
 int i, r;

 if ((loadopt & PFCTL_FLAG_OPTION) == 0)
  return (0);

 for (i = 0; pf_hints[i].name; i++)
  if (strcasecmp(opt, pf_hints[i].name) == 0)
   break;

 hint = pf_hints[i].hint;
 if (hint == ((void*)0)) {
  warnx("invalid state timeouts optimization");
  return (1);
 }

 for (i = 0; hint[i].name; i++)
  if ((r = pfctl_set_timeout(pf, hint[i].name,
      hint[i].timeout, 1)))
   return (r);

 if (pf->opts & PF_OPT_VERBOSE)
  printf("set optimization %s\n", opt);

 return (0);
}
