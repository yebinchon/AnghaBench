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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  SIGABRT ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_UNBLOCK ; 
 int TEST_SETJMP ; 
 int TEST_SIGSETJMP_NOSAVE ; 
 int TEST_SIGSETJMP_SAVE ; 
 int TEST_U_SETJMP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aborthandler ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int expectsignal ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ myself ; 
 scalar_t__ FUNC10 () ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC18(int test)
{
	struct sigaction sa;
	jmp_buf jb;
	sigjmp_buf sjb;
	sigset_t ss;
	int i, x;

	myself = FUNC10();
	i = FUNC7();

	if (test == TEST_SETJMP || test == TEST_SIGSETJMP_SAVE)
		expectsignal = 0;
	else if (test == TEST_U_SETJMP || test == TEST_SIGSETJMP_NOSAVE)
		expectsignal = 1;
	else
		FUNC5("unknown test");

	sa.sa_handler = aborthandler;
	FUNC14(&sa.sa_mask);
	sa.sa_flags = 0;
	FUNC2(FUNC12(SIGABRT, &sa, NULL) != -1);
	FUNC2(FUNC14(&ss) != -1);
	FUNC2(FUNC13(&ss, SIGABRT) != -1);
	FUNC2(FUNC16(SIG_BLOCK, &ss, NULL) != -1);
	FUNC0(myself == FUNC10());

	if (test == TEST_SETJMP)
		x = FUNC11(jb);
	else if (test == TEST_U_SETJMP)
		x = FUNC4(jb);
	else 
		x = FUNC17(sjb, !expectsignal);

	if (x != 0) {
		FUNC0(myself == FUNC10());
		FUNC1(x == i, "setjmp returned wrong value");
		FUNC8(i, SIGABRT);
		FUNC1(!expectsignal, "kill(SIGABRT) failed");
		FUNC0(myself == FUNC10());
		FUNC6();
	}

	FUNC0(myself == FUNC10());
	FUNC2(FUNC16(SIG_UNBLOCK, &ss, NULL) != -1);

	if (test == TEST_SETJMP)
		FUNC9(jb, i);
	else if (test == TEST_U_SETJMP)
		FUNC3(jb, i);
	else 
		FUNC15(sjb, i);

	FUNC5("jmp failed");
}