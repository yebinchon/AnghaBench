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
struct sigaction {void* sa_sigaction; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 scalar_t__ SIG_DFL ; 
 int FUNC0 (char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int,...) ; 
 int FUNC4 (int,char*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sigaction*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC9(int argc, char **argv)
{
	int parent_pipe, res = EXIT_SUCCESS;
	sigset_t sig;
	struct sigaction act;
	ssize_t rd;
	char tmp;

	FUNC6(&sig);
	if (FUNC8(0, NULL, &sig) < 0) {
		FUNC1(stderr, "%s: sigprocmask error\n", FUNC2());
		res = EXIT_FAILURE;
	}
	if (!FUNC7(&sig, SIGUSR1)) {
		FUNC1(stderr, "%s: SIGUSR not in procmask\n", FUNC2());
		res = EXIT_FAILURE;
	}
	if (FUNC5(SIGUSR1, NULL, &act) < 0) {
		FUNC1(stderr, "%s: sigaction error\n", FUNC2());
		res = EXIT_FAILURE;
	}
	if (act.sa_sigaction != (void *)SIG_DFL) {
		FUNC1(stderr, "%s: SIGUSR1 action != SIG_DFL\n",
		    FUNC2());
		res = EXIT_FAILURE;
	}

	if (argc >= 2) {
		parent_pipe = FUNC0(argv[1]);
		if (parent_pipe > 2) {
			FUNC3("%s: waiting for command from parent on pipe "
			    "%d\n", FUNC2(), parent_pipe);
			rd = FUNC4(parent_pipe, &tmp, 1);
			if (rd == 1) {
				FUNC3("%s: got command %c from parent\n",
				    FUNC2(), tmp);
			} else if (rd == -1) {
				FUNC3("%s: %d is no pipe, errno %d\n",
				    FUNC2(), parent_pipe, errno);
				res = EXIT_FAILURE;
			}
		}
	}

	return res;
}