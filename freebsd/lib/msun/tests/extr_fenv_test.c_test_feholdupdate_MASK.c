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
struct sigaction {int /*<<< orphan*/  sa_handler; scalar_t__ sa_flags; int /*<<< orphan*/  sa_mask; } ;
typedef  int /*<<< orphan*/  fenv_t ;

/* Variables and functions */
 int ALL_STD_EXCEPT ; 
 int FE_ALL_EXCEPT ; 
 int FE_DIVBYZERO ; 
 int /*<<< orphan*/  FE_DOWNWARD ; 
 int FE_INEXACT ; 
 int FE_INVALID ; 
 int /*<<< orphan*/  FE_UPWARD ; 
 unsigned int NEXCEPTS ; 
 int /*<<< orphan*/  SIGFPE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int* std_excepts ; 
 int /*<<< orphan*/  trap_handler ; 
 int /*<<< orphan*/  FUNC15 (int*) ; 

__attribute__((used)) static void
FUNC16(void)
{
	fenv_t env;

	struct sigaction act;
	int except, pass, status, raise;
	unsigned i;

	FUNC14(&act.sa_mask);
	act.sa_flags = 0;
	act.sa_handler = trap_handler;
	for (pass = 0; pass < 2; pass++) {
		for (i = 0; i < NEXCEPTS; i++) {
			except = std_excepts[i];
			/* over/underflow may also raise inexact */
			if (except == FE_INEXACT)
				raise = FE_DIVBYZERO | FE_INVALID;
			else
				raise = ALL_STD_EXCEPT ^ except;

			/*
			 * We need to fork a child process because
			 * there isn't a portable way to recover from
			 * a floating-point exception.
			 */
			switch(FUNC11()) {
			case 0:		/* child */
				/*
				 * We don't want to cause a fatal exception in
				 * the child until the second pass, so we can
				 * check other properties of feupdateenv().
				 */
				if (pass == 1)
					FUNC3((FUNC5(except) &
						   ALL_STD_EXCEPT) == 0);
				FUNC12(raise);
				FUNC3(FUNC8(FE_DOWNWARD) == 0);
				FUNC3(FUNC7(&env) == 0);
				FUNC3(FUNC9(FE_ALL_EXCEPT) == 0);
				FUNC12(except);
				FUNC3(FUNC8(FE_UPWARD) == 0);

				if (pass == 1)
					FUNC3(FUNC13(SIGFPE, &act, NULL) ==
					    0);
				FUNC3(FUNC10(&env) == 0);
				FUNC3(FUNC6() == FE_DOWNWARD);
				FUNC3(FUNC9(ALL_STD_EXCEPT) ==
				    (except | raise));

				FUNC3(pass == 0);
				FUNC2(0);
			default:	/* parent */
				FUNC3(FUNC15(&status) > 0);
				/*
				 * Avoid assert() here so that it's possible
				 * to examine a failed child's core dump.
				 */
				if (!FUNC1(status))
					FUNC4(1, "child aborted\n");
				FUNC3(FUNC0(status) == 0);
				break;
			case -1:	/* error */
				FUNC3(0);
			}
		}
	}
	FUNC3(FUNC9(FE_ALL_EXCEPT) == 0);
}