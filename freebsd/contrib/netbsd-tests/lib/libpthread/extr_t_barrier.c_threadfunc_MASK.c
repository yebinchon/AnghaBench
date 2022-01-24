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

/* Variables and functions */
 int PTHREAD_BARRIER_SERIAL_THREAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  after_barrier_count ; 
 int /*<<< orphan*/  barrier ; 
 int /*<<< orphan*/  mutex ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  serial_count ; 

__attribute__((used)) static void *
FUNC5(void *arg)
{
	int which = (int)(long)arg;
	int rv;

	FUNC1("thread %d entering barrier\n", which);
	rv = FUNC2(&barrier);
	FUNC1("thread %d leaving barrier -> %d\n", which, rv);

	FUNC0(FUNC3(&mutex));
	after_barrier_count++;
	if (rv == PTHREAD_BARRIER_SERIAL_THREAD)
		serial_count++;
	FUNC0(FUNC4(&mutex));

	return NULL;
}