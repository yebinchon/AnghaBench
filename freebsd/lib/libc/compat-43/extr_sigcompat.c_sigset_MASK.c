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
struct sigaction {void (* sa_handler ) (int) ;} ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  sa ;
typedef  void (* __sighandler_t ) (int) ;

/* Variables and functions */
 int /*<<< orphan*/  SIG_BLOCK ; 
 void FUNC0 (int) ; 
 void FUNC1 (int) ; 
 int /*<<< orphan*/  SIG_UNBLOCK ; 
 int FUNC2 (int,struct sigaction*,struct sigaction*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sigaction*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 

void
(*FUNC8(int sig, void (*disp)(int)))(int)
{
	sigset_t set, pset;
	struct sigaction sa, psa;

	FUNC6(&set);
	if (FUNC5(&set, sig) == -1)
		return (SIG_ERR);
	if (FUNC3(SIG_BLOCK, NULL, &pset) == -1)
		return (SIG_ERR);
	if ((__sighandler_t *)disp == SIG_HOLD) {
		if (FUNC3(SIG_BLOCK, &set, &pset) == -1)
			return (SIG_ERR);
		if (FUNC7(&pset, sig))
			return (SIG_HOLD);
		else {
			if (FUNC2(sig, NULL, &psa) == -1)
				return (SIG_ERR);
			return (psa.sa_handler);
		}
	} else {
		if (FUNC3(SIG_UNBLOCK, &set, &pset) == -1)
			return (SIG_ERR);
	}

	FUNC4(&sa, sizeof(sa));
	sa.sa_handler = disp;
	if (FUNC2(sig, &sa, &psa) == -1)
		return (SIG_ERR);
	if (FUNC7(&pset, sig))
		return (SIG_HOLD);
	else
		return (psa.sa_handler);
}