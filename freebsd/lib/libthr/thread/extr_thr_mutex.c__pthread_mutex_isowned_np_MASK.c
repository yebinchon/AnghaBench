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
struct pthread_mutex {int dummy; } ;
typedef  struct pthread_mutex* pthread_mutex_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pthread_mutex*) ; 
 struct pthread_mutex* THR_MUTEX_DESTROYED ; 
 struct pthread_mutex* THR_PSHARED_PTR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct pthread_mutex* FUNC2 (struct pthread_mutex**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct pthread_mutex*,int /*<<< orphan*/ *) ; 

int
FUNC5(pthread_mutex_t *mutex)
{
	struct pthread_mutex *m;

	if (*mutex == THR_PSHARED_PTR) {
		m = FUNC2(mutex, 0);
		if (m == NULL)
			return (0);
		FUNC4(m, NULL);
	} else {
		m = *mutex;
		if (m <= THR_MUTEX_DESTROYED)
			return (0);
	}
	return (FUNC0(m) == FUNC1(FUNC3()));
}