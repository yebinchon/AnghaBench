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
 scalar_t__ FUNC0 (char**,char**,int*) ; 
 scalar_t__ FUNC1 (int,char**,int,char**) ; 
 scalar_t__ FUNC2 (int,char*,char*,int) ; 

__attribute__((used)) static int
FUNC3(int argc, char *argv[])
{
	int o;
	char *path, *propname, *value;

	path = (argc > 2) ? argv[2] : NULL;

	value = NULL;

	if (argc > 3) {
		/* Merge property value strings into one */
		if (FUNC1(argc, argv, 3, &value) != 0)
			return (CMD_ERROR);
	} else
		value = NULL;

	if (FUNC0(&path, &propname, &o) != 0)
		return (CMD_ERROR);

	if (FUNC2(o, propname, value, 1))
		return (CMD_ERROR);

	return (CMD_OK);
}