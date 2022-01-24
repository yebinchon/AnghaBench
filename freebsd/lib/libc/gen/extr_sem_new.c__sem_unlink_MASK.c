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
typedef  int /*<<< orphan*/  path ;

/* Variables and functions */
 int /*<<< orphan*/  ENAMETOOLONG ; 
 int /*<<< orphan*/  ENOENT ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  SEM_PREFIX ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,char const*,int) ; 
 int FUNC2 (char*) ; 

int
FUNC3(const char *name)
{
	char path[PATH_MAX];

	if (name[0] != '/') {
		errno = ENOENT;
		return -1;
	}
	name++;
	FUNC0(path, SEM_PREFIX);
	if (FUNC1(path, name, sizeof(path)) >= sizeof(path)) {
		errno = ENAMETOOLONG;
		return (-1);
	}

	return (FUNC2(path));
}