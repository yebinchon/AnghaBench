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
struct TYPE_6__ {int /*<<< orphan*/  zo_lock; } ;
typedef  TYPE_1__ zfs_onexit_t ;
struct TYPE_7__ {void* za_data; } ;
typedef  TYPE_2__ zfs_onexit_action_node_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  minor_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__**) ; 

int
FUNC5(minor_t minor, uint64_t action_handle, void **data)
{
	zfs_onexit_t *zo;
	zfs_onexit_action_node_t *ap;
	int error;

	*data = NULL;

	error = FUNC4(minor, &zo);
	if (error)
		return (error);

	FUNC1(&zo->zo_lock);
	ap = FUNC3(zo, action_handle);
	if (ap != NULL)
		*data = ap->za_data;
	else
		error = FUNC0(ENOENT);
	FUNC2(&zo->zo_lock);

	return (error);
}