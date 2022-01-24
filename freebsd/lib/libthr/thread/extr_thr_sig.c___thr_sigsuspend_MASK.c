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
struct pthread {int in_sigsuspend; scalar_t__ unblock_sigcancel; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGCANCEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIG_UNBLOCK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct pthread* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct pthread*) ; 
 int /*<<< orphan*/  FUNC6 (struct pthread*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

int
FUNC8(const sigset_t * set)
{
	struct pthread *curthread;
	sigset_t newset;
	int ret, old;

	curthread = FUNC4();

	old = curthread->in_sigsuspend;
	curthread->in_sigsuspend = 1;
	FUNC5(curthread);
	ret = FUNC3(FUNC7(set, &newset));
	FUNC6(curthread, 1);
	curthread->in_sigsuspend = old;
	if (curthread->unblock_sigcancel) {
		curthread->unblock_sigcancel = 0;
		FUNC1(newset);
		FUNC0(newset, SIGCANCEL);
		FUNC2(SIG_UNBLOCK, &newset, NULL);
	}

	return (ret);
}