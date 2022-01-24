#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct superblocks {int dummy; } ;
struct superblock {struct superblocks sb_rules; struct superblocks* sb_skipsteps; } ;
struct pfctl {int dummy; } ;
struct pf_opt_rule {struct superblocks sb_rules; struct superblocks* sb_skipsteps; } ;
struct pf_opt_queue {int dummy; } ;

/* Variables and functions */
 int PF_SKIP_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct pf_opt_queue*) ; 
 struct superblock* FUNC1 (struct pf_opt_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct superblocks*) ; 
 int /*<<< orphan*/  FUNC3 (struct superblocks*,struct superblock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pf_opt_queue*,struct superblock*,int /*<<< orphan*/ ) ; 
 struct superblock* FUNC5 (int,int) ; 
 int /*<<< orphan*/  por_entry ; 
 int /*<<< orphan*/  sb_entry ; 
 int /*<<< orphan*/  FUNC6 (struct superblock*,struct superblock*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

int
FUNC8(struct pfctl *pf, struct pf_opt_queue *opt_queue,
    struct superblocks *superblocks)
{
	struct superblock *block = NULL;
	struct pf_opt_rule *por;
	int i;

	while (!FUNC0(opt_queue)) {
		por = FUNC1(opt_queue);
		FUNC4(opt_queue, por, por_entry);
		if (block == NULL || !FUNC6(block, por)) {
			if ((block = FUNC5(1, sizeof(*block))) == NULL) {
				FUNC7("calloc");
				return (1);
			}
			FUNC2(&block->sb_rules);
			for (i = 0; i < PF_SKIP_COUNT; i++)
				FUNC2(&block->sb_skipsteps[i]);
			FUNC3(superblocks, block, sb_entry);
		}
		FUNC3(&block->sb_rules, por, por_entry);
	}

	return (0);
}