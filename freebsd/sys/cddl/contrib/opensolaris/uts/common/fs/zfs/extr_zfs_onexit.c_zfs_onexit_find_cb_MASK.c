#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  zo_actions; int /*<<< orphan*/  zo_lock; } ;
typedef  TYPE_1__ zfs_onexit_t ;
typedef  int /*<<< orphan*/  zfs_onexit_action_node_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static zfs_onexit_action_node_t *
FUNC4(zfs_onexit_t *zo, uint64_t action_handle)
{
	zfs_onexit_action_node_t *match;
	zfs_onexit_action_node_t *ap;
	list_t *l;

	FUNC0(FUNC1(&zo->zo_lock));

	match = (zfs_onexit_action_node_t *)(uintptr_t)action_handle;
	l = &zo->zo_actions;
	for (ap = FUNC2(l); ap != NULL; ap = FUNC3(l, ap)) {
		if (match == ap)
			break;
	}
	return (ap);
}