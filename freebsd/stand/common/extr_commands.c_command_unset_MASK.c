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
 char* FUNC0 (int) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static int
FUNC2(int argc, char *argv[])
{
	int	err;

	if (argc != 2) {
		command_errmsg = "wrong number of arguments";
		return (CMD_ERROR);
	} else {
		if ((err = FUNC1(argv[1])) != 0) {
			command_errmsg = FUNC0(err);
			return (CMD_ERROR);
		}
	}
	return (CMD_OK);
}