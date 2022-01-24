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
 scalar_t__ FUNC0 (char const*,char**) ; 
 int /*<<< orphan*/  mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 size_t FUNC5 (char*) ; 

__attribute__((used)) static int
FUNC6(const char *name, char *auditstr, int len)
{
	char *str;

#ifdef HAVE_PTHREAD_MUTEX_LOCK
	pthread_mutex_lock(&mutex);
#endif
	FUNC3();
	if (FUNC0(name, &str) < 0) {
#ifdef HAVE_PTHREAD_MUTEX_LOCK
		pthread_mutex_unlock(&mutex);
#endif
		return (-2);
	}

	/*
	 * getstrfromtype_locked() can return NULL for an empty value -- make
	 * sure to handle this by coercing the NULL back into an empty string.
	 */
	if (str != NULL && (FUNC5(str) >= (size_t)len)) {
#ifdef HAVE_PTHREAD_MUTEX_LOCK
		pthread_mutex_unlock(&mutex);
#endif
		return (-3);
	}
	FUNC4(auditstr, str != NULL ? str : "", len);
#ifdef HAVE_PTHREAD_MUTEX_LOCK
	pthread_mutex_unlock(&mutex);
#endif
	return (0);
}