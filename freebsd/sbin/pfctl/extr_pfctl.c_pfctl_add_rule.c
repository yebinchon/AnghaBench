
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t u_int8_t ;
struct pfctl {TYPE_1__* anchor; } ;
struct pf_ruleset {TYPE_4__* rules; } ;
struct TYPE_12__ {int list; } ;
struct pf_rule {TYPE_5__ rpool; TYPE_2__* anchor; int action; } ;
struct TYPE_13__ {TYPE_2__* anchor; } ;
struct TYPE_10__ {int ptr; } ;
struct TYPE_11__ {TYPE_3__ active; } ;
struct TYPE_9__ {int name; int path; TYPE_7__ ruleset; } ;
struct TYPE_8__ {struct pf_ruleset ruleset; } ;


 size_t PF_RULESET_MAX ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int ,struct pf_rule*,int ) ;
 int bcopy (struct pf_rule*,struct pf_rule*,int) ;
 void* calloc (int,int) ;
 int entries ;
 int err (int,char*,...) ;
 int errx (int,char*,...) ;
 size_t pf_get_ruleset_number (int ) ;
 int pf_init_ruleset (TYPE_7__*) ;
 int pfctl_move_pool (TYPE_5__*,TYPE_5__*) ;
 int strlcpy (int ,char const*,int) ;
 int strlen (char*) ;
 char* strrchr (char const*,char) ;

int
pfctl_add_rule(struct pfctl *pf, struct pf_rule *r, const char *anchor_call)
{
 u_int8_t rs_num;
 struct pf_rule *rule;
 struct pf_ruleset *rs;
 char *p;

 rs_num = pf_get_ruleset_number(r->action);
 if (rs_num == PF_RULESET_MAX)
  errx(1, "Invalid rule type %d", r->action);

 rs = &pf->anchor->ruleset;

 if (anchor_call[0] && r->anchor == ((void*)0)) {



  if ((r->anchor = calloc(1, sizeof(*r->anchor))) == ((void*)0))
   err(1, "pfctl_add_rule: calloc");

  pf_init_ruleset(&r->anchor->ruleset);
  r->anchor->ruleset.anchor = r->anchor;
  if (strlcpy(r->anchor->path, anchor_call,
      sizeof(rule->anchor->path)) >= sizeof(rule->anchor->path))
   errx(1, "pfctl_add_rule: strlcpy");
  if ((p = strrchr(anchor_call, '/')) != ((void*)0)) {
   if (!strlen(p))
    err(1, "pfctl_add_rule: bad anchor name %s",
        anchor_call);
  } else
   p = (char *)anchor_call;
  if (strlcpy(r->anchor->name, p,
      sizeof(rule->anchor->name)) >= sizeof(rule->anchor->name))
   errx(1, "pfctl_add_rule: strlcpy");
 }

 if ((rule = calloc(1, sizeof(*rule))) == ((void*)0))
  err(1, "calloc");
 bcopy(r, rule, sizeof(*rule));
 TAILQ_INIT(&rule->rpool.list);
 pfctl_move_pool(&r->rpool, &rule->rpool);

 TAILQ_INSERT_TAIL(rs->rules[rs_num].active.ptr, rule, entries);
 return (0);
}
