#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct __posix_spawn_file_actions {int dummy; } ;
typedef  TYPE_1__* posix_spawn_file_actions_t ;
struct TYPE_4__ {int /*<<< orphan*/  fa_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int) ; 

int
FUNC2(posix_spawn_file_actions_t *ret)
{
	posix_spawn_file_actions_t fa;

	fa = FUNC1(sizeof(struct __posix_spawn_file_actions));
	if (fa == NULL)
		return (-1);

	FUNC0(&fa->fa_list);
	*ret = fa;
	return (0);
}