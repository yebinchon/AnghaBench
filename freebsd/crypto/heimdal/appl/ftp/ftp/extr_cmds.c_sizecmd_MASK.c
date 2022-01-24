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
 int /*<<< orphan*/  FUNC0 (int*,char***,char*) ; 
 int code ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

void
FUNC3(int argc, char **argv)
{

	if (argc < 2 && !FUNC0(&argc, &argv, "filename")) {
		FUNC2("usage: %s filename\n", argv[0]);
		code = -1;
		return;
	}
	FUNC1("SIZE %s", argv[1]);
}