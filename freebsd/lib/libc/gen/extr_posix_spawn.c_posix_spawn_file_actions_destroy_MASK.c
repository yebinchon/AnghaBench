#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* posix_spawn_file_actions_t ;
struct TYPE_6__ {scalar_t__ fae_action; struct TYPE_6__* fae_path; int /*<<< orphan*/  fa_list; } ;
typedef  TYPE_1__ posix_spawn_file_actions_entry_t ;

/* Variables and functions */
 scalar_t__ FAE_OPEN ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fae_list ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

int
FUNC3(posix_spawn_file_actions_t *fa)
{
	posix_spawn_file_actions_entry_t *fae;

	while ((fae = FUNC0(&(*fa)->fa_list)) != NULL) {
		/* Remove file action entry from the queue */
		FUNC1(&(*fa)->fa_list, fae_list);

		/* Deallocate file action entry */
		if (fae->fae_action == FAE_OPEN)
			FUNC2(fae->fae_path);
		FUNC2(fae);
	}

	FUNC2(*fa);
	return (0);
}