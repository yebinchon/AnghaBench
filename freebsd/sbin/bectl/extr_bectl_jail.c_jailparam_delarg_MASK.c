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
 int EINVAL ; 
 int FUNC0 (char*) ; 
 char* mnt_loc ; 
 char* FUNC1 (char*,char) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

__attribute__((used)) static int
FUNC3(char *arg)
{
	char *name, *val;

	if (arg == NULL)
		return (EINVAL);
	name = arg;
	if ((val = FUNC1(name, '=')) != NULL)
		*val++ = '\0';

	if (FUNC2(name, "path") == 0)
		*mnt_loc = '\0';
	return (FUNC0(name));
}