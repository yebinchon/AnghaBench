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
struct sigaction {scalar_t__ sa_flags; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  sigjmp_buf ;
typedef  int /*<<< orphan*/  jmp_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SIGABRT ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_UNBLOCK ; 
 int TEST_SETJMP ; 
 int TEST_SIGSETJMP_NOSAVE ; 
 int TEST_SIGSETJMP_SAVE ; 
 int TEST_U_SETJMP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aborthandler ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int expectsignal ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC16(int test)
{
	struct sigaction sa;
	jmp_buf jb;
	sigjmp_buf sjb;
	sigset_t ss;
	int i, x;

	i = FUNC6();

	if (test == TEST_SETJMP || test == TEST_SIGSETJMP_SAVE)
		expectsignal = 0;
	else if (test == TEST_U_SETJMP || test == TEST_SIGSETJMP_NOSAVE)
		expectsignal = 1;
	else
		FUNC4("unknown test");

	sa.sa_handler = aborthandler;
	FUNC12(&sa.sa_mask);
	sa.sa_flags = 0;
	FUNC1(FUNC10(SIGABRT, &sa, NULL) != -1);
	FUNC1(FUNC12(&ss) != -1);
	FUNC1(FUNC11(&ss, SIGABRT) != -1);
	FUNC1(FUNC14(SIG_BLOCK, &ss, NULL) != -1);

	if (test == TEST_SETJMP)
		x = FUNC9(jb);
	else if (test == TEST_U_SETJMP)
		x = FUNC3(jb);
	else 
		x = FUNC15(sjb, !expectsignal);

	if (x != 0) {
		FUNC0(x == i, "setjmp returned wrong value");
		FUNC7(i, SIGABRT);
		FUNC0(!expectsignal, "kill(SIGABRT) failed");
		FUNC5();
	}

	FUNC1(FUNC14(SIG_UNBLOCK, &ss, NULL) != -1);

	if (test == TEST_SETJMP)
		FUNC8(jb, i);
	else if (test == TEST_U_SETJMP)
		FUNC2(jb, i);
	else 
		FUNC13(sjb, i);

	FUNC4("jmp failed");
}