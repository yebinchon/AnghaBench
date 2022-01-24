#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_12__ {int /*<<< orphan*/  sa_mask; scalar_t__ sa_flags; int /*<<< orphan*/  sa_handler; } ;
struct TYPE_11__ {TYPE_1__* el_signal; } ;
struct TYPE_10__ {int sig_no; TYPE_5__* sig_action; } ;

/* Variables and functions */
 int /*<<< orphan*/  CC_REFRESH ; 
#define  SIGCONT 129 
#define  SIGWINCH 128 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_ERR ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* sel ; 
 int /*<<< orphan*/  FUNC4 (int,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int* sighdl ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC11(int signo)
{
	int i, save_errno;
	sigset_t nset, oset;

	save_errno = errno;
	(void) FUNC6(&nset);
	(void) FUNC5(&nset, signo);
	(void) FUNC7(SIG_BLOCK, &nset, &oset);

	sel->el_signal->sig_no = signo;

	switch (signo) {
	case SIGCONT:
		FUNC10(sel);
		if (FUNC0(sel, 0) == CC_REFRESH)
			FUNC3(sel);
		FUNC8(sel);
		break;

	case SIGWINCH:
		FUNC1(sel);
		break;

	default:
		FUNC9(sel);
		break;
	}

	for (i = 0; sighdl[i] != -1; i++)
		if (signo == sighdl[i])
			break;

	(void) FUNC4(signo, &sel->el_signal->sig_action[i], NULL);
	sel->el_signal->sig_action[i].sa_handler = SIG_ERR;
	sel->el_signal->sig_action[i].sa_flags = 0;
	FUNC6(&sel->el_signal->sig_action[i].sa_mask);
	(void) FUNC7(SIG_SETMASK, &oset, NULL);
	(void) FUNC2(0, signo);
	errno = save_errno;
}