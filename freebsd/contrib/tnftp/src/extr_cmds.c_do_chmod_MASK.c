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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int*,char***,char*) ; 
 int code ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 

void
FUNC3(int argc, char *argv[])
{

	if (argc == 0 || (argc == 1 && !FUNC1(&argc, &argv, "mode")))
		goto usage;
	if ((argc < 3 && !FUNC1(&argc, &argv, "remote-file")) || argc > 3) {
 usage:
		FUNC0("usage: %s mode remote-file\n", argv[0]);
		code = -1;
		return;
	}
	(void)FUNC2("SITE CHMOD %s %s", argv[1], argv[2]);
}