#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct superblock {int /*<<< orphan*/  sb_rules; } ;
struct pfctl {int dummy; } ;
struct pf_rule {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  nr; } ;
struct pf_opt_rule {TYPE_1__ por_rule; } ;
typedef  int /*<<< orphan*/  b2 ;
typedef  int /*<<< orphan*/  a2 ;
typedef  int /*<<< orphan*/  a ;

/* Variables and functions */
 int /*<<< orphan*/  DC ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pf_opt_rule* FUNC1 (int /*<<< orphan*/ *) ; 
 struct pf_opt_rule* FUNC2 (struct pf_opt_rule*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct pf_opt_rule*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pf_rule*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pf_rule*,struct pf_rule*) ; 
 int /*<<< orphan*/  FUNC6 (struct pf_opt_rule*) ; 
 scalar_t__ FUNC7 (struct pf_rule*,struct pf_rule*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct pf_rule*,struct pf_rule*,int) ; 
 int /*<<< orphan*/  por_entry ; 

int
FUNC9(struct pfctl *pf, struct superblock *block)
{
	struct pf_opt_rule *por1, *por2, *por_next, *por2_next;
	struct pf_rule a, a2, b, b2;

	for (por1 = FUNC1(&block->sb_rules); por1; por1 = por_next) {
		por_next = FUNC2(por1, por_entry);
		for (por2 = por_next; por2; por2 = por2_next) {
			por2_next = FUNC2(por2, por_entry);
			FUNC4(&a, &por1->por_rule, DC);
			FUNC4(&b, &por2->por_rule, DC);
			FUNC8(&a2, &a, sizeof(a2));
			FUNC8(&b2, &b, sizeof(b2));

			FUNC5(&a, &b);
			FUNC5(&b2, &a2);
			if (FUNC7(&a, &b, sizeof(a)) == 0) {
				FUNC0("removing identical rule  nr%d = *nr%d*",
				    por1->por_rule.nr, por2->por_rule.nr);
				FUNC3(&block->sb_rules, por2, por_entry);
				if (por_next == por2)
					por_next = FUNC2(por1, por_entry);
				FUNC6(por2);
			} else if (FUNC7(&a2, &b2, sizeof(a2)) == 0) {
				FUNC0("removing identical rule  *nr%d* = nr%d",
				    por1->por_rule.nr, por2->por_rule.nr);
				FUNC3(&block->sb_rules, por1, por_entry);
				FUNC6(por1);
				break;
			}
		}
	}

	return (0);
}