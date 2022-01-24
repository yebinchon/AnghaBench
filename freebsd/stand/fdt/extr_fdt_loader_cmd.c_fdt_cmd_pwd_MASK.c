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

/* Variables and functions */
 int CMD_OK ; 
 int FDT_CWD_LEN ; 
 char* cwd ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 

__attribute__((used)) static int
FUNC4(int argc, char *argv[])
{
	char line[FDT_CWD_LEN];

	FUNC1();
	FUNC3(line, "%s\n", cwd);
	FUNC2(line);
	FUNC0();
	return (CMD_OK);
}