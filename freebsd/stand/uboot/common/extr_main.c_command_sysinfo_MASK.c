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
struct sys_info {int dummy; } ;

/* Variables and functions */
 int CMD_ERROR ; 
 int CMD_OK ; 
 char* command_errmsg ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sys_info*) ; 
 struct sys_info* FUNC2 () ; 

__attribute__((used)) static int
FUNC3(int argc, char *argv[])
{
	struct sys_info *si;

	if ((si = FUNC2()) == NULL) {
		command_errmsg = "could not retrieve U-Boot sys info!?";
		return (CMD_ERROR);
	}

	FUNC0("U-Boot system info:\n");
	FUNC1(si);
	return (CMD_OK);
}