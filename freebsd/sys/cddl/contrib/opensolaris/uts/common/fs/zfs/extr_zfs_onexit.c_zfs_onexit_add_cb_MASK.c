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
struct TYPE_6__ {int /*<<< orphan*/  zo_lock; int /*<<< orphan*/  zo_actions; } ;
typedef  TYPE_1__ zfs_onexit_t ;
struct TYPE_7__ {void (* za_func ) (void*) ;void* za_data; int /*<<< orphan*/  za_link; } ;
typedef  TYPE_2__ zfs_onexit_action_node_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  minor_t ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 TYPE_2__* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_1__**) ; 

int
FUNC6(minor_t minor, void (*func)(void *), void *data,
    uint64_t *action_handle)
{
	zfs_onexit_t *zo;
	zfs_onexit_action_node_t *ap;
	int error;

	error = FUNC5(minor, &zo);
	if (error)
		return (error);

	ap = FUNC0(sizeof (zfs_onexit_action_node_t), KM_SLEEP);
	FUNC2(&ap->za_link);
	ap->za_func = func;
	ap->za_data = data;

	FUNC3(&zo->zo_lock);
	FUNC1(&zo->zo_actions, ap);
	FUNC4(&zo->zo_lock);
	if (action_handle)
		*action_handle = (uint64_t)(uintptr_t)ap;

	return (0);
}