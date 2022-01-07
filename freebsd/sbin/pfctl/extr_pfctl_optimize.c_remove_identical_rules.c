
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct superblock {int sb_rules; } ;
struct pfctl {int dummy; } ;
struct pf_rule {int dummy; } ;
struct TYPE_2__ {int nr; } ;
struct pf_opt_rule {TYPE_1__ por_rule; } ;
typedef int b2 ;
typedef int a2 ;
typedef int a ;


 int DC ;
 int DEBUG (char*,int ,int ) ;
 struct pf_opt_rule* TAILQ_FIRST (int *) ;
 struct pf_opt_rule* TAILQ_NEXT (struct pf_opt_rule*,int ) ;
 int TAILQ_REMOVE (int *,struct pf_opt_rule*,int ) ;
 int comparable_rule (struct pf_rule*,TYPE_1__*,int ) ;
 int exclude_supersets (struct pf_rule*,struct pf_rule*) ;
 int free (struct pf_opt_rule*) ;
 scalar_t__ memcmp (struct pf_rule*,struct pf_rule*,int) ;
 int memcpy (struct pf_rule*,struct pf_rule*,int) ;
 int por_entry ;

int
remove_identical_rules(struct pfctl *pf, struct superblock *block)
{
 struct pf_opt_rule *por1, *por2, *por_next, *por2_next;
 struct pf_rule a, a2, b, b2;

 for (por1 = TAILQ_FIRST(&block->sb_rules); por1; por1 = por_next) {
  por_next = TAILQ_NEXT(por1, por_entry);
  for (por2 = por_next; por2; por2 = por2_next) {
   por2_next = TAILQ_NEXT(por2, por_entry);
   comparable_rule(&a, &por1->por_rule, DC);
   comparable_rule(&b, &por2->por_rule, DC);
   memcpy(&a2, &a, sizeof(a2));
   memcpy(&b2, &b, sizeof(b2));

   exclude_supersets(&a, &b);
   exclude_supersets(&b2, &a2);
   if (memcmp(&a, &b, sizeof(a)) == 0) {
    DEBUG("removing identical rule  nr%d = *nr%d*",
        por1->por_rule.nr, por2->por_rule.nr);
    TAILQ_REMOVE(&block->sb_rules, por2, por_entry);
    if (por_next == por2)
     por_next = TAILQ_NEXT(por1, por_entry);
    free(por2);
   } else if (memcmp(&a2, &b2, sizeof(a2)) == 0) {
    DEBUG("removing identical rule  *nr%d* = nr%d",
        por1->por_rule.nr, por2->por_rule.nr);
    TAILQ_REMOVE(&block->sb_rules, por1, por_entry);
    free(por1);
    break;
   }
  }
 }

 return (0);
}
