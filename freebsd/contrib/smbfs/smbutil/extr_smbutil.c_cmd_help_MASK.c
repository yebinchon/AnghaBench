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
struct commands {int /*<<< orphan*/  (* usage ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EX_DATAERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct commands* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int
FUNC5(int argc, char *argv[])
{
	struct commands *cmd;
	char *cp;
    
	if (argc < 2)
		FUNC2();
	cp = argv[1];
	cmd = FUNC3(cp);
	if (cmd == NULL)
		FUNC0(EX_DATAERR, "unknown command %s", cp);
	if (cmd->usage == NULL)
		FUNC0(EX_DATAERR, "no specific help for command %s", cp);
	cmd->usage();
	FUNC1(0);
}