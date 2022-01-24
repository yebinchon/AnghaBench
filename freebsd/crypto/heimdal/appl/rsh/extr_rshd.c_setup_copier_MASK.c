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
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC7 (int have_errsock)
{
    int p0[2], p1[2], p2[2];
    pid_t pid;

    FUNC5(p0);
    FUNC5(p1);
    FUNC5(p2);
    pid = FUNC3 ();
    if (pid < 0)
	FUNC2 (STDOUT_FILENO, "fork", "Could not create child process.");
    if (pid == 0) { /* child */
	FUNC0 (p0[1]);
	FUNC0 (p1[0]);
	FUNC0 (p2[0]);
	FUNC1 (p0[0], STDIN_FILENO);
	FUNC1 (p1[1], STDOUT_FILENO);
	FUNC1 (p2[1], STDERR_FILENO);
	FUNC0 (p0[0]);
	FUNC0 (p1[1]);
	FUNC0 (p2[1]);
    } else { /* parent */
	FUNC0 (p0[0]);
	FUNC0 (p1[1]);
	FUNC0 (p2[1]);

	if (FUNC4 (STDOUT_FILENO, "", 1) != 1)
	    FUNC2 (STDOUT_FILENO, "net_write", "Write failure.");

	FUNC6 (STDIN_FILENO, p0[1],
	      STDOUT_FILENO, p1[0],
	      STDERR_FILENO, p2[0],
	      have_errsock);
    }
}