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
 int /*<<< orphan*/  DIR_CONTROL_ENTRY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/ * fp ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char**) ; 
 scalar_t__ inacdir ; 
 int /*<<< orphan*/  mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ ptrmoved ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 size_t FUNC5 (char*) ; 

int
FUNC6(char *name, int len)
{
	char *dir;
	int ret = 0;

	/*
	 * Check if another function was called between successive calls to
	 * getacdir.
	 */
#ifdef HAVE_PTHREAD_MUTEX_LOCK
	pthread_mutex_lock(&mutex);
#endif
	if (inacdir && ptrmoved) {
		ptrmoved = 0;
		if (fp != NULL)
			FUNC0(fp, 0, SEEK_SET);
		ret = 2;
	}
	if (FUNC1(DIR_CONTROL_ENTRY, &dir) < 0) {
#ifdef HAVE_PTHREAD_MUTEX_LOCK
		pthread_mutex_unlock(&mutex);
#endif
		return (-2);
	}
	if (dir == NULL) {
#ifdef HAVE_PTHREAD_MUTEX_LOCK
		pthread_mutex_unlock(&mutex);
#endif
		return (-1);
	}
	if (FUNC5(dir) >= (size_t)len) {
#ifdef HAVE_PTHREAD_MUTEX_LOCK
		pthread_mutex_unlock(&mutex);
#endif
		return (-3);
	}
	FUNC4(name, dir, len);
#ifdef HAVE_PTHREAD_MUTEX_LOCK
	pthread_mutex_unlock(&mutex);
#endif
	return (ret);
}