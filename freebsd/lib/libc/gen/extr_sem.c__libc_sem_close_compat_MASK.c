#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* sem_t ;
struct TYPE_7__ {scalar_t__ syssem; int /*<<< orphan*/  semid; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  named_sems_mtx ; 
 scalar_t__ FUNC5 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

int
FUNC7(sem_t *sem)
{

	if (FUNC5(sem) != 0)
		return (-1);

	if ((*sem)->syssem == 0) {
		errno = EINVAL;
		return (-1);
	}

	FUNC1(&named_sems_mtx);
	if (FUNC4((*sem)->semid) != 0) {
		FUNC2(&named_sems_mtx);
		return (-1);
	}
	FUNC0((*sem), entry);
	FUNC2(&named_sems_mtx);
	FUNC6(*sem);
	*sem = NULL;
	FUNC3(sem);
	return (0);
}