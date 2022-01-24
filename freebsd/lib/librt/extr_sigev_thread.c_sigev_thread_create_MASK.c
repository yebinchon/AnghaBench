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
struct sigev_thread {int tn_refcount; int tn_lwpid; int /*<<< orphan*/  tn_cv; int /*<<< orphan*/  tn_thread; int /*<<< orphan*/ * tn_cur; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sigev_thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sigev_thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGBUS ; 
 int /*<<< orphan*/  SIGFPE ; 
 int /*<<< orphan*/  SIGILL ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  SIGTRAP ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sigev_thread*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sigev_thread*) ; 
 struct sigev_thread* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigev_default_attr ; 
 struct sigev_thread* sigev_default_thread ; 
 int /*<<< orphan*/  sigev_list_mtx ; 
 int /*<<< orphan*/  sigev_service_loop ; 
 int /*<<< orphan*/  sigev_threads ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tn_link ; 

__attribute__((used)) static struct sigev_thread *
FUNC12(int usedefault)
{
	struct sigev_thread *tn;
	sigset_t set, oset;
	int ret;

	if (usedefault && sigev_default_thread) {
		FUNC2();
		sigev_default_thread->tn_refcount++;
		FUNC3();
		return (sigev_default_thread);	
	}

	tn = FUNC9(sizeof(*tn));
	tn->tn_cur = NULL;
	tn->tn_lwpid = -1;
	tn->tn_refcount = 1;
	FUNC4(&tn->tn_cv, NULL);

	/* for debug */
	FUNC2();
	FUNC0(&sigev_threads, tn, tn_link);
	FUNC3();

	FUNC11(&set);	/* SIGLIBRT is masked. */
	FUNC10(&set, SIGBUS);
	FUNC10(&set, SIGILL);
	FUNC10(&set, SIGFPE);
	FUNC10(&set, SIGSEGV);
	FUNC10(&set, SIGTRAP);
	FUNC7(SIG_SETMASK, &set, &oset);
	ret = FUNC6(&tn->tn_thread, &sigev_default_attr,
		 sigev_service_loop, tn);
	FUNC7(SIG_SETMASK, &oset, NULL);

	if (ret != 0) {
		FUNC2();
		FUNC1(tn, tn_link);
		FUNC3();
		FUNC8(tn);
		tn = NULL;
	} else {
		/* wait the thread to get its lwpid */

		FUNC2();
		while (tn->tn_lwpid == -1)
			FUNC5(&tn->tn_cv, sigev_list_mtx);
		FUNC3();
	}
	return (tn);
}