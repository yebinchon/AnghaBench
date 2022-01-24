#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int _count; } ;
struct TYPE_6__ {TYPE_1__ _kern; } ;
typedef  TYPE_2__ sem_t ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int*,int,int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 

int
FUNC3(sem_t *sem)
{
	int val;

	if (FUNC2(sem) != 0)
		return (-1);

	while (FUNC0(val = sem->_kern._count) > 0) {
		if (FUNC1(&sem->_kern._count, val, val - 1))
			return (0);
	}
	errno = EAGAIN;
	return (-1);
}