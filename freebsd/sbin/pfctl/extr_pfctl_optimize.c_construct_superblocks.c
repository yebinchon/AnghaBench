
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct superblocks {int dummy; } ;
struct superblock {struct superblocks sb_rules; struct superblocks* sb_skipsteps; } ;
struct pfctl {int dummy; } ;
struct pf_opt_rule {struct superblocks sb_rules; struct superblocks* sb_skipsteps; } ;
struct pf_opt_queue {int dummy; } ;


 int PF_SKIP_COUNT ;
 int TAILQ_EMPTY (struct pf_opt_queue*) ;
 struct superblock* TAILQ_FIRST (struct pf_opt_queue*) ;
 int TAILQ_INIT (struct superblocks*) ;
 int TAILQ_INSERT_TAIL (struct superblocks*,struct superblock*,int ) ;
 int TAILQ_REMOVE (struct pf_opt_queue*,struct superblock*,int ) ;
 struct superblock* calloc (int,int) ;
 int por_entry ;
 int sb_entry ;
 int superblock_inclusive (struct superblock*,struct superblock*) ;
 int warn (char*) ;

int
construct_superblocks(struct pfctl *pf, struct pf_opt_queue *opt_queue,
    struct superblocks *superblocks)
{
 struct superblock *block = ((void*)0);
 struct pf_opt_rule *por;
 int i;

 while (!TAILQ_EMPTY(opt_queue)) {
  por = TAILQ_FIRST(opt_queue);
  TAILQ_REMOVE(opt_queue, por, por_entry);
  if (block == ((void*)0) || !superblock_inclusive(block, por)) {
   if ((block = calloc(1, sizeof(*block))) == ((void*)0)) {
    warn("calloc");
    return (1);
   }
   TAILQ_INIT(&block->sb_rules);
   for (i = 0; i < PF_SKIP_COUNT; i++)
    TAILQ_INIT(&block->sb_skipsteps[i]);
   TAILQ_INSERT_TAIL(superblocks, block, sb_entry);
  }
  TAILQ_INSERT_TAIL(&block->sb_rules, por, por_entry);
 }

 return (0);
}
