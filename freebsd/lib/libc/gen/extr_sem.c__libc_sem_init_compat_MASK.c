#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ semid_t ;
typedef  int /*<<< orphan*/ * sem_t ;

/* Variables and functions */
 scalar_t__ SEM_USER ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC2 (unsigned int,scalar_t__,int) ; 

int
FUNC3(sem_t *sem, int pshared, unsigned int value)
{
	semid_t semid;

	/*
	 * We always have to create the kernel semaphore if the
	 * threads library isn't present since libc's version of
	 * pthread_cond_wait() is just a stub that doesn't really
	 * wait.
	 */
	semid = (semid_t)SEM_USER;
	if ((pshared != 0) && FUNC1(&semid, value) != 0)
		return (-1);

	*sem = FUNC2(value, semid, pshared);
	if ((*sem) == NULL) {
		if (pshared != 0)
			FUNC0(semid);
		return (-1);
	}
	return (0);
}