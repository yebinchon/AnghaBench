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
 int ENOMEM ; 
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static int
FUNC3(char **what, char *val)
{
	char *path;
	size_t len;
	int rel;

	len = FUNC2(val) + 1;
	rel = (val[0] != '/') ? 1 : 0;
	path = FUNC0(len + rel);
	if (path == NULL)
		return (ENOMEM);
	path[0] = '/';
	FUNC1(path + rel, val);

	*what = path;
	return (0);
}