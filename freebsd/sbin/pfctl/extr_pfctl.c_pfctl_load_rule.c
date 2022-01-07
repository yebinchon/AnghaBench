
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int8_t ;
struct pfioc_rule {int anchor_call; int rule; int pool_ticket; int anchor; int ticket; } ;
struct TYPE_3__ {int ticket; } ;
struct pfctl {int opts; int dev; TYPE_1__ paddr; int trans; } ;
struct pf_rule {int rpool; TYPE_2__* anchor; int af; int action; } ;
typedef int pr ;
struct TYPE_4__ {char* name; char* path; scalar_t__ match; } ;


 int DIOCADDRULE ;
 int INDENT (int,int) ;
 scalar_t__ MAXPATHLEN ;
 int PF_OPT_NOACTION ;
 int PF_OPT_NUMERIC ;
 int PF_OPT_VERBOSE ;
 int PF_OPT_VERBOSE2 ;
 int bzero (struct pfioc_rule*,int) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 scalar_t__ ioctl (int ,int ,struct pfioc_rule*) ;
 int memcpy (int *,struct pf_rule*,int) ;
 int pf_get_ruleset_number (int ) ;
 scalar_t__ pfctl_add_pool (struct pfctl*,int *,int ) ;
 int pfctl_clear_pool (int *) ;
 int pfctl_get_ticket (int ,int ,char*) ;
 int print_rule (struct pf_rule*,char*,int,int) ;
 int snprintf (char*,scalar_t__,char*,char*) ;
 int strlcpy (int ,char*,int) ;
 int strlen (char*) ;

int
pfctl_load_rule(struct pfctl *pf, char *path, struct pf_rule *r, int depth)
{
 u_int8_t rs_num = pf_get_ruleset_number(r->action);
 char *name;
 struct pfioc_rule pr;
 int len = strlen(path);

 bzero(&pr, sizeof(pr));

 if ((pf->opts & PF_OPT_NOACTION) == 0)
  pr.ticket = pfctl_get_ticket(pf->trans, rs_num, path);
 if (strlcpy(pr.anchor, path, sizeof(pr.anchor)) >= sizeof(pr.anchor))
  errx(1, "pfctl_load_rule: strlcpy");

 if (r->anchor) {
  if (r->anchor->match) {
   if (path[0])
    snprintf(&path[len], MAXPATHLEN - len,
        "/%s", r->anchor->name);
   else
    snprintf(&path[len], MAXPATHLEN - len,
        "%s", r->anchor->name);
   name = r->anchor->name;
  } else
   name = r->anchor->path;
 } else
  name = "";

 if ((pf->opts & PF_OPT_NOACTION) == 0) {
  if (pfctl_add_pool(pf, &r->rpool, r->af))
   return (1);
  pr.pool_ticket = pf->paddr.ticket;
  memcpy(&pr.rule, r, sizeof(pr.rule));
  if (r->anchor && strlcpy(pr.anchor_call, name,
      sizeof(pr.anchor_call)) >= sizeof(pr.anchor_call))
   errx(1, "pfctl_load_rule: strlcpy");
  if (ioctl(pf->dev, DIOCADDRULE, &pr))
   err(1, "DIOCADDRULE");
 }

 if (pf->opts & PF_OPT_VERBOSE) {
  INDENT(depth, !(pf->opts & PF_OPT_VERBOSE2));
  print_rule(r, r->anchor ? r->anchor->name : "",
      pf->opts & PF_OPT_VERBOSE2,
      pf->opts & PF_OPT_NUMERIC);
 }
 path[len] = '\0';
 pfctl_clear_pool(&r->rpool);
 return (0);
}
