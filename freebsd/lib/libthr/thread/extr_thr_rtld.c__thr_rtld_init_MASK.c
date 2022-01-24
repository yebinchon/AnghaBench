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
typedef  int /*<<< orphan*/  ucontext_t ;
struct umtx {int dummy; } ;
struct pthread {int dummy; } ;
struct RtldLockInfo {int /*<<< orphan*/ * at_fork; int /*<<< orphan*/  thread_clr_flag; int /*<<< orphan*/  thread_set_flag; int /*<<< orphan*/  lock_release; int /*<<< orphan*/  wlock_acquire; int /*<<< orphan*/  rlock_acquire; int /*<<< orphan*/  lock_destroy; int /*<<< orphan*/  lock_create; } ;
typedef  int /*<<< orphan*/  dummy ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_getpid ; 
 int /*<<< orphan*/  UMTX_OP_WAKE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 () ; 
 struct pthread* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct RtldLockInfo*) ; 
 int /*<<< orphan*/  _thr_rtld_clr_flag ; 
 int /*<<< orphan*/  _thr_rtld_lock_create ; 
 int /*<<< orphan*/  _thr_rtld_lock_destroy ; 
 int /*<<< orphan*/  _thr_rtld_lock_release ; 
 int /*<<< orphan*/  _thr_rtld_rlock_acquire ; 
 int /*<<< orphan*/  _thr_rtld_set_flag ; 
 int /*<<< orphan*/  _thr_rtld_wlock_acquire ; 
 int /*<<< orphan*/  FUNC10 (struct pthread*) ; 
 int /*<<< orphan*/  FUNC11 (struct pthread*) ; 
 int /*<<< orphan*/  FUNC12 (struct umtx*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (long*,long*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

void
FUNC19(void)
{
	struct RtldLockInfo	li;
	struct pthread		*curthread;
	ucontext_t *uc;
	long dummy = -1;
	int uc_len;

	curthread = FUNC3();

	/* force to resolve _umtx_op PLT */
	FUNC12((struct umtx *)&dummy, UMTX_OP_WAKE, 1, 0, 0);
	
	/* force to resolve errno() PLT */
	FUNC0();

	/* force to resolve memcpy PLT */
	FUNC16(&dummy, &dummy, sizeof(dummy));

	FUNC17(NULL, 0, 0);
	FUNC8();

	li.lock_create  = _thr_rtld_lock_create;
	li.lock_destroy = _thr_rtld_lock_destroy;
	li.rlock_acquire = _thr_rtld_rlock_acquire;
	li.wlock_acquire = _thr_rtld_wlock_acquire;
	li.lock_release  = _thr_rtld_lock_release;
	li.thread_set_flag = _thr_rtld_set_flag;
	li.thread_clr_flag = _thr_rtld_clr_flag;
	li.at_fork = NULL;

	/*
	 * Preresolve the symbols needed for the fork interposer.  We
	 * call _rtld_atfork_pre() and _rtld_atfork_post() with NULL
	 * argument to indicate that no actual locking inside the
	 * functions should happen.  Neither rtld compat locks nor
	 * libthr rtld locks cannot work there:
	 * - compat locks do not handle the case of two locks taken
	 *   in write mode (the signal mask for the thread is corrupted);
	 * - libthr locks would work, but locked rtld_bind_lock prevents
	 *   symbol resolution for _rtld_atfork_post.
	 */
	FUNC7(NULL);
	FUNC6(NULL);
	FUNC5();
	FUNC4();
	FUNC15();
	FUNC18(SYS_getpid);

	/* mask signals, also force to resolve __sys_sigprocmask PLT */
	FUNC10(curthread);
	FUNC9(&li);
	FUNC11(curthread);

	uc_len = FUNC2();
	uc = FUNC13(uc_len);
	FUNC14(uc);
	FUNC1((char *)uc);
}