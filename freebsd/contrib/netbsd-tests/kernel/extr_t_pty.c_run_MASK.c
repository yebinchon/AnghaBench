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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 size_t buffer_size ; 
 size_t* FUNC2 (int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 size_t* dbuf ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 size_t packets ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ verbose ; 
 int FUNC11 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int,size_t*,size_t) ; 

__attribute__((used)) static
void FUNC13(void)
{
	size_t i;
	int pty;
	int status;
	pid_t child;
	if ((dbuf = FUNC2(1, buffer_size)) == NULL)
		FUNC5(EXIT_FAILURE, "malloc(%zu)", buffer_size);

	if (verbose)
		(void)FUNC7(
		    "parent: started; opening PTY and spawning child\n");
	pty = FUNC9();
	child = FUNC3(FUNC8(pty));
	if (verbose)
		(void)FUNC7("parent: sleeping to make sure child is ready\n");
	(void)FUNC10(1);

	for (i = 0; i < buffer_size; i++)
		dbuf[i] = i & 0xff;

	if (verbose)
		(void)FUNC7("parent: writing\n");

	for (i = 0; i < packets; i++) {
		ssize_t	size;

		if (verbose)
			(void)FUNC7(
			    "parent: attempting to write %zu bytes to PTY\n",
			    buffer_size);
		if ((size = FUNC12(pty, dbuf, buffer_size)) == -1) {
			FUNC5(EXIT_FAILURE, "parent: write()");
			break;
		}
		if (verbose)
			(void)FUNC7("parent: wrote %zd bytes to PTY\n", size);
	}

	if (verbose)
		(void)FUNC7("parent: waiting for child to exit\n");
	if (FUNC11(child, &status, 0) == -1)
		FUNC5(EXIT_FAILURE, "waitpid");
	if (!FUNC1(status) || FUNC0(status) != 0)
		FUNC6(EXIT_FAILURE, "child failed");

	if (verbose)
		(void)FUNC7("parent: closing PTY\n");
	(void)FUNC4(pty);
	if (verbose)
		(void)FUNC7("parent: exiting\n");
}