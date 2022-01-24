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
struct sembuf {int sem_op; void* sem_flg; scalar_t__ sem_num; } ;

/* Variables and functions */
 void* SEM_UNDO ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  semkey ; 
 int FUNC4 (int,struct sembuf*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void
FUNC6(void)
{
	struct sembuf s;
	int semid;

	if ((semid = FUNC3(semkey, 1, 0)) == -1)
		FUNC0(1, "waiter: semget");

	/*
	 * Attempt to acquire the semaphore.
	 */
	s.sem_num = 0;
	s.sem_op = -1;
	s.sem_flg = SEM_UNDO;

	if (FUNC4(semid, &s, 1) == -1)
		FUNC0(1, "waiter: semop -1");

	FUNC2("WOO!  GOT THE SEMAPHORE!\n");
	FUNC5(1);

	/*
	 * Release the semaphore and exit.
	 */
	s.sem_num = 0;
	s.sem_op = 1;
	s.sem_flg = SEM_UNDO;

	if (FUNC4(semid, &s, 1) == -1)
		FUNC0(1, "waiter: semop +1");

	FUNC1(0);
}