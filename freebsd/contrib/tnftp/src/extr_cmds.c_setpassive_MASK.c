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
 int activefallback ; 
 int code ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 char* FUNC2 (int) ; 
 int passivemode ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  ttyout ; 

void
FUNC4(int argc, char *argv[])
{

	if (argc == 1) {
		passivemode = !passivemode;
		activefallback = passivemode;
	} else if (argc != 2) {
 passiveusage:
		FUNC0("usage: %s [ on | off | auto ]\n", argv[0]);
		code = -1;
		return;
	} else if (FUNC3(argv[1], "on") == 0) {
		passivemode = 1;
		activefallback = 0;
	} else if (FUNC3(argv[1], "off") == 0) {
		passivemode = 0;
		activefallback = 0;
	} else if (FUNC3(argv[1], "auto") == 0) {
		passivemode = 1;
		activefallback = 1;
	} else
		goto passiveusage;
	FUNC1(ttyout, "Passive mode: %s; fallback to active mode: %s.\n",
	    FUNC2(passivemode), FUNC2(activefallback));
	code = passivemode;
}