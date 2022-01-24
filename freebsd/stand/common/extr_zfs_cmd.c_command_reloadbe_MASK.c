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
 char* FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static int
FUNC3(int argc, char *argv[])
{
	int err;
	char *root;

	if (argc > 2) {
		command_errmsg = "wrong number of arguments";
		return (CMD_ERROR);
	}

	if (argc == 2) {
		err = FUNC2(argv[1]);
	} else {
		root = FUNC0("zfs_be_root");
		if (root == NULL) {
			/* There does not appear to be a ZFS pool here, exit without error */
			return (CMD_OK);
		}
		err = FUNC2(root);
	}

	if (err != 0) {
		command_errmsg = FUNC1(err);
		return (CMD_ERROR);
	}

	return (CMD_OK);
}