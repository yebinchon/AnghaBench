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
struct pthread {int dummy; } ;
typedef  struct pthread* pthread_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct pthread*,struct pthread*) ; 
 int _SIG_MAXSIG ; 
 struct pthread* FUNC1 () ; 
 int FUNC2 (struct pthread*,struct pthread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pthread*,int) ; 

int
FUNC4(pthread_t pthread, int sig)
{
	struct pthread *curthread;
	int ret;

	/* Check for invalid signal numbers: */
	if (sig < 0 || sig > _SIG_MAXSIG)
		/* Invalid signal: */
		return (EINVAL);

	curthread = FUNC1();

	/*
	 * Ensure the thread is in the list of active threads, and the
	 * signal is valid (signal 0 specifies error checking only) and
	 * not being ignored:
	 */
	if (curthread == pthread) {
		if (sig > 0)
			FUNC3(pthread, sig);
		ret = 0;
	} else if ((ret = FUNC2(curthread, pthread,
	    /*include dead*/0)) == 0) {
		if (sig > 0)
			FUNC3(pthread, sig);
		FUNC0(curthread, pthread);
	}

	/* Return the completion status: */
	return (ret);
}