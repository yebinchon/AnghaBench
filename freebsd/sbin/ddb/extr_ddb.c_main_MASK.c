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
 int /*<<< orphan*/  EX_OK ; 
 int /*<<< orphan*/  R_OK ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char**) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(int argc, char *argv[])
{

	/*
	 * If we've only got one argument and it's an absolute path to a file,
	 * interpret as a file to be read in.
	 */
	if (argc == 2 && argv[1][0] == '/' && FUNC0(argv[1], R_OK) == 0)
		FUNC2(argv[1]);
	else
		FUNC1(argc-1, argv+1);
	FUNC3(EX_OK);
}