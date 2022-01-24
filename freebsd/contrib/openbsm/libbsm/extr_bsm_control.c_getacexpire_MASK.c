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
typedef  int /*<<< orphan*/  u_long ;
typedef  long time_t ;

/* Variables and functions */
 int AU_LINE_MAX ; 
 int /*<<< orphan*/  EXPIRE_AFTER_CONTROL_ENTRY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (long*,size_t*,int /*<<< orphan*/ ,char) ; 
 int FUNC5 (char*,char*,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 

int
FUNC7(int *andflg, time_t *age, size_t *size)
{
	char *str;
	int nparsed;
	u_long val1, val2;
	char mult1, mult2;
	char andor[AU_LINE_MAX];

	*age = 0L;
	*size = 0LL;
	*andflg = 0;

#ifdef HAVE_PTHREAD_MUTEX_LOCK
	pthread_mutex_lock(&mutex);
#endif
	FUNC3();
	if (FUNC0(EXPIRE_AFTER_CONTROL_ENTRY, &str) < 0) {
#ifdef HAVE_PTHREAD_MUTEX_LOCK
		pthread_mutex_unlock(&mutex);
#endif
		return (-2);
	}
	if (str == NULL) {
#ifdef HAVE_PTHREAD_MUTEX_LOCK
		pthread_mutex_unlock(&mutex);
#endif
		return (-1);
	}

	/* First, trim off any leading white space. */
	while (*str == ' ' || *str == '\t')
		str++;

	nparsed = FUNC5(str, "%lu%c%[ \tadnorADNOR]%lu%c", &val1, &mult1,
	    andor, &val2, &mult2);

	switch (nparsed) {
	case 1:
		/* If no multiplier then assume 'B' (Bytes). */
		mult1 = 'B';
		/* fall through */
	case 2:
		/* One expiration condition. */
		if (FUNC4(age, size, val1, mult1) != 0) {
#ifdef HAVE_PTHREAD_MUTEX_LOCK
			pthread_mutex_unlock(&mutex);
#endif
			return (-1);
		}
		break;

	case 5:
		/* Two expiration conditions. */
		if (FUNC4(age, size, val1, mult1) != 0 ||
		    FUNC4(age, size, val2, mult2) != 0) {
#ifdef HAVE_PTHREAD_MUTEX_LOCK
			pthread_mutex_unlock(&mutex);
#endif
			return (-1);
		}
		if (FUNC6(andor, "and") != NULL)
			*andflg = 1;
		else if (FUNC6(andor, "or") != NULL)
			*andflg = 0;
		else {
#ifdef HAVE_PTHREAD_MUTEX_LOCK
			pthread_mutex_unlock(&mutex);
#endif
			return (-1);
		}
		break;

	default:
#ifdef HAVE_PTHREAD_MUTEX_LOCK
		pthread_mutex_unlock(&mutex);
#endif
		return (-1);
	}

#ifdef HAVE_PTHREAD_MUTEX_LOCK
	pthread_mutex_unlock(&mutex);
#endif
	return (0);
}