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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int data ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int pdata ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ use_builtin_ls ; 

void
FUNC7(char *file)
{
    if(use_builtin_ls) {
	FILE *dout;
	dout = FUNC1(file, -1, "w");
	if (dout == NULL)
	    return;
	FUNC6(FUNC3(dout), 0);
	if(FUNC0(dout, file) == 0)
	    FUNC4(226, "Transfer complete.");
	else
	    FUNC4(451, "Requested action aborted. Local error in processing.");
	FUNC2(dout);
	data = -1;
	pdata = -1;
    } else {
#ifdef HAVE_LS_A
	const char *cmd = "/bin/ls -lA %s";
#else
	const char *cmd = "/bin/ls -la %s";
#endif
	FUNC5(cmd, file);
    }
}