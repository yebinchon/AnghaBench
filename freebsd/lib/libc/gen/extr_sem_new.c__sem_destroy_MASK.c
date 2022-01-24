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
struct TYPE_5__ {int _flags; } ;
struct TYPE_6__ {scalar_t__ _magic; TYPE_1__ _kern; } ;
typedef  TYPE_2__ sem_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int SEM_NAMED ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 

int
FUNC1(sem_t *sem)
{

	if (FUNC0(sem) != 0)
		return (-1);

	if (sem->_kern._flags & SEM_NAMED) {
		errno = EINVAL;
		return (-1);
	}
	sem->_magic = 0;
	return (0);
}