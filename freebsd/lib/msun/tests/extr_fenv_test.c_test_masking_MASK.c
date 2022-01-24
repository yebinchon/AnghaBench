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

/* Variables and functions */
 int ALL_STD_EXCEPT ; 
 int FE_ALL_EXCEPT ; 
 int FE_DIVBYZERO ; 
 int FE_INEXACT ; 
 int FE_INVALID ; 
 int FE_OVERFLOW ; 
 int FE_UNDERFLOW ; 
 unsigned int NEXCEPTS ; 
 int /*<<< orphan*/  SIGFPE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int* std_excepts ; 
 int /*<<< orphan*/  trap_handler ; 
 int /*<<< orphan*/  FUNC13 (int*) ; 

__attribute__((used)) static void
FUNC14(void)
{
	struct sigaction act;
	int except, pass, raise, status;
	unsigned i;

	FUNC2((FUNC6() & ALL_STD_EXCEPT) == 0);
	FUNC2((FUNC5(FE_INVALID|FE_OVERFLOW) & ALL_STD_EXCEPT) == 0);
	FUNC2((FUNC5(FE_UNDERFLOW) & ALL_STD_EXCEPT) ==
	    (FE_INVALID | FE_OVERFLOW));
	FUNC2((FUNC4(FE_OVERFLOW) & ALL_STD_EXCEPT) ==
	    (FE_INVALID | FE_OVERFLOW | FE_UNDERFLOW));
	FUNC2((FUNC6() & ALL_STD_EXCEPT) == (FE_INVALID | FE_UNDERFLOW));
	FUNC2((FUNC4(FE_ALL_EXCEPT) & ALL_STD_EXCEPT) ==
	    (FE_INVALID | FE_UNDERFLOW));
	FUNC2((FUNC6() & ALL_STD_EXCEPT) == 0);

	FUNC12(&act.sa_mask);
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
			switch(FUNC9()) {
			case 0:		/* child */
				FUNC2((FUNC6() & ALL_STD_EXCEPT) == 0);
				FUNC2((FUNC5(except)
					   & ALL_STD_EXCEPT) == 0);
				FUNC2(FUNC6() == except);
				FUNC10(raise);
				FUNC2(FUNC7(raise) == 0);
				FUNC2(FUNC8(ALL_STD_EXCEPT) == raise);

				FUNC2(FUNC11(SIGFPE, &act, NULL) == 0);
				switch (pass) {
				case 0:
					FUNC10(except);
				case 1:
					FUNC7(except);
				default:
					FUNC2(0);
				}
				FUNC2(0);
			default:	/* parent */
				FUNC2(FUNC13(&status) > 0);
				/*
				 * Avoid assert() here so that it's possible
				 * to examine a failed child's core dump.
				 */
				if (!FUNC1(status))
					FUNC3(1, "child aborted\n");
				FUNC2(FUNC0(status) == 0);
				break;
			case -1:	/* error */
				FUNC2(0);
			}
		}
	}
	FUNC2(FUNC8(FE_ALL_EXCEPT) == 0);
}