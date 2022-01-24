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
 int /*<<< orphan*/  EX_DATAERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*) ; 

int
FUNC6(int argc, char *argv[])
{
	char *cp, *psw;
    
	if (argc < 2)
		psw = FUNC3("Password:");
	else
		psw = argv[1];
	cp = FUNC5(NULL, psw);
	if (cp == NULL)
		FUNC0(EX_DATAERR, "out of memory");
	FUNC4("%s\n", cp);
	FUNC2(cp);
	FUNC1(0);
}