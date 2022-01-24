#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  zl_bp_tree; } ;
typedef  TYPE_1__ zilog_t ;
struct TYPE_7__ {int /*<<< orphan*/  zn_dva; } ;
typedef  TYPE_2__ zil_bp_node_t ;
typedef  int /*<<< orphan*/  dva_t ;
typedef  int /*<<< orphan*/  blkptr_t ;
typedef  int /*<<< orphan*/  avl_tree_t ;
typedef  int /*<<< orphan*/  avl_index_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  EEXIST ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int,int /*<<< orphan*/ ) ; 

int
FUNC6(zilog_t *zilog, const blkptr_t *bp)
{
	avl_tree_t *t = &zilog->zl_bp_tree;
	const dva_t *dva;
	zil_bp_node_t *zn;
	avl_index_t where;

	if (FUNC1(bp))
		return (0);

	dva = FUNC0(bp);

	if (FUNC3(t, dva, &where) != NULL)
		return (FUNC2(EEXIST));

	zn = FUNC5(sizeof (zil_bp_node_t), KM_SLEEP);
	zn->zn_dva = *dva;
	FUNC4(t, zn, where);

	return (0);
}