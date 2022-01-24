#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ pgno_t ;
struct TYPE_10__ {int /*<<< orphan*/  bt_mp; int /*<<< orphan*/  bt_psize; } ;
struct TYPE_9__ {scalar_t__ lower; scalar_t__ pgno; scalar_t__* linp; int /*<<< orphan*/  flags; int /*<<< orphan*/  upper; int /*<<< orphan*/  nextpg; int /*<<< orphan*/  prevpg; } ;
typedef  TYPE_1__ PAGE ;
typedef  TYPE_2__ BTREE ;

/* Variables and functions */
 scalar_t__ BTDATAOFF ; 
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  MPOOL_DIRTY ; 
 int /*<<< orphan*/  MPOOL_PAGE_NEXT ; 
 int /*<<< orphan*/  P_BLEAF ; 
 int /*<<< orphan*/  P_INVALID ; 
 scalar_t__ P_ROOT ; 
 int RET_ERROR ; 
 int RET_SUCCESS ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(BTREE *t)
{
	PAGE *meta, *root;
	pgno_t npg;

	if ((root = FUNC2(t->bt_mp, 1, 0)) != NULL) {
		if (root->lower == 0 &&
		    root->pgno == 0 &&
		    root->linp[0] == 0) {
			FUNC1(t->bt_mp, root);
			errno = EINVAL;
		} else {
			FUNC4(t->bt_mp, root, 0);
			return (RET_SUCCESS);
		}
	}
	if (errno != EINVAL)		/* It's OK to not exist. */
		return (RET_ERROR);
	errno = 0;

	if ((meta = FUNC3(t->bt_mp, &npg, MPOOL_PAGE_NEXT)) == NULL)
		return (RET_ERROR);

	if ((root = FUNC3(t->bt_mp, &npg, MPOOL_PAGE_NEXT)) == NULL)
		return (RET_ERROR);

	if (npg != P_ROOT)
		return (RET_ERROR);
	root->pgno = npg;
	root->prevpg = root->nextpg = P_INVALID;
	root->lower = BTDATAOFF;
	root->upper = t->bt_psize;
	root->flags = P_BLEAF;
	FUNC0(meta, 0, t->bt_psize);
	FUNC4(t->bt_mp, meta, MPOOL_DIRTY);
	FUNC4(t->bt_mp, root, MPOOL_DIRTY);
	return (RET_SUCCESS);
}