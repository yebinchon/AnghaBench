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
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIG_UNBLOCK ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC7(int sig)
{
#if defined(HAVE_PTHREAD) || defined(HAVE_SOLARIS_THREADS) || defined(HAVE_SIGPROCMASK)
#  if defined(HAVE_PTHREAD) || defined(HAVE_SOLARIS_THREADS)
	int err;
#  endif
	sigset_t sigset;
	sigemptyset(&sigset);
	sigaddset(&sigset, sig);
#ifdef HAVE_PTHREAD
	if((err=pthread_sigmask(SIG_UNBLOCK, &sigset, NULL)))
		fatal_exit("pthread_sigmask: %s", strerror(err));
#else
#  ifdef HAVE_SOLARIS_THREADS
	if((err=thr_sigsetmask(SIG_UNBLOCK, &sigset, NULL)))
		fatal_exit("thr_sigsetmask: %s", strerror(err));
#  else 
	/* have nothing, do single thread case */
	if(sigprocmask(SIG_UNBLOCK, &sigset, NULL))
		fatal_exit("sigprocmask: %s", strerror(errno));
#  endif /* HAVE_SOLARIS_THREADS */
#endif /* HAVE_PTHREAD */
#else
	(void)sig;
#endif /* have signal stuff */
}