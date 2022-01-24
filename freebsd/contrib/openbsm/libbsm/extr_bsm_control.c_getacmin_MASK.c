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
 int /*<<< orphan*/  MINFREE_CONTROL_ENTRY ; 
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int
FUNC5(int *min_val)
{
	char *min;

#ifdef HAVE_PTHREAD_MUTEX_LOCK
	pthread_mutex_lock(&mutex);
#endif
	FUNC4();
	if (FUNC1(MINFREE_CONTROL_ENTRY, &min) < 0) {
#ifdef HAVE_PTHREAD_MUTEX_LOCK
		pthread_mutex_unlock(&mutex);
#endif
		return (-2);
	}
	if (min == NULL) {
#ifdef HAVE_PTHREAD_MUTEX_LOCK
		pthread_mutex_unlock(&mutex);
#endif
		return (-1);
	}
	*min_val = FUNC0(min);
#ifdef HAVE_PTHREAD_MUTEX_LOCK
	pthread_mutex_unlock(&mutex);
#endif
	return (0);
}