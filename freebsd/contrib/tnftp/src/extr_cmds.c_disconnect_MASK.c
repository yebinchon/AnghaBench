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
 int /*<<< orphan*/  FUNC1 () ; 
 int code ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  connected ; 

void
FUNC3(int argc, char *argv[])
{

			/* this may be called with argc == 0, argv == NULL */
	if (argc == 0 && argv != NULL) {
		FUNC0("usage: %s\n", argv[0]);
		code = -1;
		return;
	}
	if (!connected)
		return;
	(void)FUNC2("QUIT");
	FUNC1();
}