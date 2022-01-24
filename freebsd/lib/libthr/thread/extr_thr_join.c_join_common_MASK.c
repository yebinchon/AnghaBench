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
struct timespec {scalar_t__ tv_sec; } ;
struct pthread {int flags; long tid; struct pthread* joiner; void* ret; } ;
typedef  struct pthread* pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int EDEADLK ; 
 int EINVAL ; 
 int ENOTSUP ; 
 int ESRCH ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct pthread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pthread*,int /*<<< orphan*/ ,struct pthread*) ; 
 int THR_FLAGS_DETACHED ; 
 int /*<<< orphan*/  FUNC2 (struct pthread*,struct pthread*) ; 
 int /*<<< orphan*/  FUNC3 (struct pthread*,struct pthread*) ; 
 long TID_TERMINATED ; 
 int /*<<< orphan*/  FUNC4 (struct timespec*,struct timespec const*,struct timespec*) ; 
 struct pthread* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct pthread*) ; 
 int /*<<< orphan*/  FUNC7 (struct pthread*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct pthread*,struct pthread*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct pthread*) ; 
 int /*<<< orphan*/  FUNC10 (struct pthread*,struct pthread*) ; 
 int FUNC11 (long*,long,struct timespec*) ; 
 int /*<<< orphan*/  backout_join ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct timespec*) ; 

__attribute__((used)) static int
FUNC13(pthread_t pthread, void **thread_return,
	const struct timespec *abstime)
{
	struct pthread *curthread = FUNC5();
	struct timespec ts, ts2, *tsp;
	void *tmp;
	long tid;
	int ret = 0;

	if (pthread == NULL)
		return (EINVAL);

	if (pthread == curthread)
		return (EDEADLK);

	if ((ret = FUNC8(curthread, pthread, 1)) != 0)
		return (ESRCH);

	if ((pthread->flags & THR_FLAGS_DETACHED) != 0) {
		ret = EINVAL;
	} else if (pthread->joiner != NULL) {
		/* Multiple joiners are not supported. */
		ret = ENOTSUP;
	}
	if (ret) {
		FUNC3(curthread, pthread);
		return (ret);
	}
	/* Set the running thread to be the joiner: */
	pthread->joiner = curthread;

	FUNC3(curthread, pthread);

	FUNC1(curthread, backout_join, pthread);
	FUNC6(curthread);

	tid = pthread->tid;
	while (pthread->tid != TID_TERMINATED) {
		FUNC9(curthread);
		if (abstime != NULL) {
			FUNC12(CLOCK_REALTIME, &ts);
			FUNC4(&ts2, abstime, &ts);
			if (ts2.tv_sec < 0) {
				ret = ETIMEDOUT;
				break;
			}
			tsp = &ts2;
		} else
			tsp = NULL;
		ret = FUNC11(&pthread->tid, tid, tsp);
		if (ret == ETIMEDOUT)
			break;
	}

	FUNC7(curthread, 0);
	FUNC0(curthread, 0);

	if (ret == ETIMEDOUT) {
		FUNC2(curthread, pthread);
		pthread->joiner = NULL;
		FUNC3(curthread, pthread);
	} else {
		ret = 0;
		tmp = pthread->ret;
		FUNC2(curthread, pthread);
		pthread->flags |= THR_FLAGS_DETACHED;
		pthread->joiner = NULL;
		FUNC10(curthread, pthread); /* thread lock released */

		if (thread_return != NULL)
			*thread_return = tmp;
	}
	return (ret);
}