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
typedef  int /*<<< orphan*/  pthread_attr_t ;
typedef  int /*<<< orphan*/  isc_threadfunc_t ;
typedef  int /*<<< orphan*/  isc_threadarg_t ;
typedef  int /*<<< orphan*/  isc_thread_t ;
typedef  int /*<<< orphan*/  isc_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  ISC_R_UNEXPECTED ; 
 int /*<<< orphan*/  PTHREAD_SCOPE_SYSTEM ; 
 size_t THREAD_MINSTACKSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

isc_result_t
FUNC6(isc_threadfunc_t func, isc_threadarg_t arg,
		  isc_thread_t *thread)
{
	pthread_attr_t attr;
	size_t stacksize;
	int ret;

	FUNC2(&attr);

#if defined(HAVE_PTHREAD_ATTR_GETSTACKSIZE) && \
    defined(HAVE_PTHREAD_ATTR_SETSTACKSIZE)
	ret = pthread_attr_getstacksize(&attr, &stacksize);
	if (ret != 0)
		return (ISC_R_UNEXPECTED);

	if (stacksize < THREAD_MINSTACKSIZE) {
		ret = pthread_attr_setstacksize(&attr, THREAD_MINSTACKSIZE);
		if (ret != 0)
			return (ISC_R_UNEXPECTED);
	}
#endif

#if defined(PTHREAD_SCOPE_SYSTEM) && defined(NEED_PTHREAD_SCOPE_SYSTEM)
	ret = pthread_attr_setscope(&attr, PTHREAD_SCOPE_SYSTEM);
	if (ret != 0)
		return (ISC_R_UNEXPECTED);
#endif

	ret = FUNC5(thread, &attr, func, arg);
	if (ret != 0)
		return (ISC_R_UNEXPECTED);

	FUNC0(&attr);

	return (ISC_R_SUCCESS);
}