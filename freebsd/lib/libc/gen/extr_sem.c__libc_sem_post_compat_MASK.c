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
typedef  TYPE_1__* sem_t ;
struct TYPE_4__ {scalar_t__ syssem; int /*<<< orphan*/  count; scalar_t__ nwaiters; int /*<<< orphan*/  semid; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (TYPE_1__**) ; 

int
FUNC5(sem_t *sem)
{

	if (FUNC4(sem) != 0)
		return (-1);

	if ((*sem)->syssem != 0)
		return FUNC2((*sem)->semid);

	FUNC1(&(*sem)->count, 1);
	FUNC3();
	if ((*sem)->nwaiters)
		return FUNC0(&(*sem)->count);
	return (0);
}