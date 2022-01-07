
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct superblock {int * sb_skipsteps; } ;
struct pf_skip_step {scalar_t__ ps_count; int ps_rules; } ;
struct pf_opt_rule {int dummy; } ;


 int TAILQ_INSERT_BEFORE (struct pf_skip_step*,struct pf_skip_step*,int ) ;
 int TAILQ_INSERT_TAIL (int *,struct pf_opt_rule*,int ) ;
 struct pf_skip_step* TAILQ_PREV (struct pf_skip_step*,struct pf_skip_step*,int ) ;
 int TAILQ_REMOVE (int *,struct pf_skip_step*,int ) ;
 int * por_skip_entry ;
 int ps_entry ;

void
skip_append(struct superblock *superblock, int skipnum,
    struct pf_skip_step *skiplist, struct pf_opt_rule *por)
{
 struct pf_skip_step *prev;

 skiplist->ps_count++;
 TAILQ_INSERT_TAIL(&skiplist->ps_rules, por, por_skip_entry[skipnum]);


 while ((prev = TAILQ_PREV(skiplist, skiplist, ps_entry)) &&
     prev->ps_count < skiplist->ps_count) {
  TAILQ_REMOVE(&superblock->sb_skipsteps[skipnum],
      skiplist, ps_entry);
  TAILQ_INSERT_BEFORE(prev, skiplist, ps_entry);
 }
}
