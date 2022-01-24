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
 int skipvfs ; 
 scalar_t__ FUNC0 (char const*,char const*) ; 

int
FUNC1(const char *vfsname, const char **vfslist)
{

	if (vfslist == NULL)
		return (0);
	while (*vfslist != NULL) {
		if (FUNC0(vfsname, *vfslist) == 0)
			return (skipvfs);
		++vfslist;
	}
	return (!skipvfs);
}