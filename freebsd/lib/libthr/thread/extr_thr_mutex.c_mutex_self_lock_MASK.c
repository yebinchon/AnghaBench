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
struct timespec {int tv_sec; int tv_nsec; } ;
struct pthread_mutex {int /*<<< orphan*/  m_count; int /*<<< orphan*/  m_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int EAGAIN ; 
 int EDEADLK ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  PTHREAD_MUTEX_ADAPTIVE_NP 131 
#define  PTHREAD_MUTEX_ERRORCHECK 130 
#define  PTHREAD_MUTEX_NORMAL 129 
#define  PTHREAD_MUTEX_RECURSIVE 128 
 int /*<<< orphan*/  FUNC1 (struct timespec*,struct timespec const*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC2 (struct timespec*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct timespec*) ; 

__attribute__((used)) static int
FUNC4(struct pthread_mutex *m, const struct timespec *abstime)
{
	struct timespec	ts1, ts2;
	int ret;

	switch (FUNC0(m->m_flags)) {
	case PTHREAD_MUTEX_ERRORCHECK:
	case PTHREAD_MUTEX_ADAPTIVE_NP:
		if (abstime) {
			if (abstime->tv_sec < 0 || abstime->tv_nsec < 0 ||
			    abstime->tv_nsec >= 1000000000) {
				ret = EINVAL;
			} else {
				FUNC3(CLOCK_REALTIME, &ts1);
				FUNC1(&ts2, abstime, &ts1);
				FUNC2(&ts2, NULL);
				ret = ETIMEDOUT;
			}
		} else {
			/*
			 * POSIX specifies that mutexes should return
			 * EDEADLK if a recursive lock is detected.
			 */
			ret = EDEADLK; 
		}
		break;

	case PTHREAD_MUTEX_NORMAL:
		/*
		 * What SS2 define as a 'normal' mutex.  Intentionally
		 * deadlock on attempts to get a lock you already own.
		 */
		ret = 0;
		if (abstime) {
			if (abstime->tv_sec < 0 || abstime->tv_nsec < 0 ||
			    abstime->tv_nsec >= 1000000000) {
				ret = EINVAL;
			} else {
				FUNC3(CLOCK_REALTIME, &ts1);
				FUNC1(&ts2, abstime, &ts1);
				FUNC2(&ts2, NULL);
				ret = ETIMEDOUT;
			}
		} else {
			ts1.tv_sec = 30;
			ts1.tv_nsec = 0;
			for (;;)
				FUNC2(&ts1, NULL);
		}
		break;

	case PTHREAD_MUTEX_RECURSIVE:
		/* Increment the lock count: */
		if (m->m_count + 1 > 0) {
			m->m_count++;
			ret = 0;
		} else
			ret = EAGAIN;
		break;

	default:
		/* Trap invalid mutex types; */
		ret = EINVAL;
	}

	return (ret);
}