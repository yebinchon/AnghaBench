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
 int CMD_ERROR ; 
 int CMD_OK ; 
 char* command_errmsg ; 
 int devs_no ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int
FUNC3(int argc, char *argv[])
{
	int i;

	if ((devs_no = FUNC1()) == 0) {
		command_errmsg = "no U-Boot devices found!?";
		return (CMD_ERROR);
	}
	
	FUNC0("U-Boot devices:\n");
	for (i = 0; i < devs_no; i++) {
		FUNC2(i);
		FUNC0("\n");
	}
	return (CMD_OK);
}