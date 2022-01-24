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
struct puffstestargs {int /*<<< orphan*/  pta_childpid; } ;
typedef  int /*<<< orphan*/  atf_tc_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  WNOHANG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char const*) ; 
 int FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct puffstestargs* theargs ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

int
FUNC8(const atf_tc_t *tc, const char *path, int flags)
{
	struct puffstestargs *pargs = theargs;
	int status;
	int rv;

	/* ok, child might exit here */
	FUNC4(SIGCHLD, SIG_IGN);

	rv = FUNC3(path, flags);
	if (rv)	
		return rv;

	if ((rv = FUNC2(path)) != 0)
		return rv;

	if (FUNC7(pargs->pta_childpid, &status, WNOHANG) > 0)
		return 0;
	FUNC0(pargs->pta_childpid, SIGTERM);
	FUNC5(10);
	if (FUNC7(pargs->pta_childpid, &status, WNOHANG) > 0)
		return 0;
	FUNC0(pargs->pta_childpid, SIGKILL);
	FUNC5(500);
	FUNC6(&status);

	FUNC1("p2kffsfake");

	return 0;
}