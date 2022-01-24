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
 scalar_t__ CONTINUE ; 
 int /*<<< orphan*/  FUNC0 (int*,char***,char*) ; 
 int code ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

void
FUNC3(int argc, char **argv)
{

	if (argc < 2 && !FUNC0(&argc, &argv, "from-name"))
		goto usage;
	if (argc < 3 && !FUNC0(&argc, &argv, "to-name")) {
usage:
		FUNC2("%s from-name to-name\n", argv[0]);
		code = -1;
		return;
	}
	if (FUNC1("RNFR %s", argv[1]) == CONTINUE)
		FUNC1("RNTO %s", argv[2]);
}