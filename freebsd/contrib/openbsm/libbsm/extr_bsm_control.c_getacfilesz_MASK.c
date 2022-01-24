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
typedef  int /*<<< orphan*/  uintmax_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FILESZ_CONTROL_ENTRY ; 
 size_t MIN_AUDIT_FILE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (size_t*,size_t,char) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (char*,char*,int /*<<< orphan*/ *,char*) ; 

int
FUNC6(size_t *filesz_val)
{
	char *str;
	size_t val;
	char mult;
	int nparsed;

#ifdef HAVE_PTHREAD_MUTEX_LOCK
	pthread_mutex_lock(&mutex);
#endif
	FUNC4();
	if (FUNC1(FILESZ_CONTROL_ENTRY, &str) < 0) {
#ifdef HAVE_PTHREAD_MUTEX_LOCK
		pthread_mutex_unlock(&mutex);
#endif
		return (-2);
	}
	if (str == NULL) {
#ifdef HAVE_PTHREAD_MUTEX_LOCK
		pthread_mutex_unlock(&mutex);
#endif
		errno = EINVAL;
		return (-1);
	}

	/* Trim off any leading white space. */
	while (*str == ' ' || *str == '\t')
		str++;

	nparsed = FUNC5(str, "%ju%c", (uintmax_t *)&val, &mult);

	switch (nparsed) {
	case 1:
		/* If no multiplier then assume 'B' (bytes). */
		mult = 'B';
		/* fall through */
	case 2:
		if (FUNC0(filesz_val, val, mult) == 0)
			break;
		/* fall through */
	default:
		errno = EINVAL;
#ifdef HAVE_PTHREAD_MUTEX_LOCK
		pthread_mutex_unlock(&mutex);
#endif
		return (-1);
	}

	/*
	 * The file size must either be 0 or >= MIN_AUDIT_FILE_SIZE.  0
	 * indicates no rotation size.
	 */
	if (*filesz_val < 0 || (*filesz_val > 0 &&
		*filesz_val < MIN_AUDIT_FILE_SIZE)) {
#ifdef HAVE_PTHREAD_MUTEX_LOCK
		pthread_mutex_unlock(&mutex);
#endif
		filesz_val = 0L;
		errno = EINVAL;
		return (-1);
	}
#ifdef HAVE_PTHREAD_MUTEX_LOCK
	pthread_mutex_unlock(&mutex);
#endif
	return (0);
}