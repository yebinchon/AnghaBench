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
 int /*<<< orphan*/  ENOENT ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int FUNC1 (char*,unsigned int,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*) ; 

__attribute__((used)) static int
FUNC3 (char *solib, unsigned o_flags, char **temp_pathname)
{
	char path[PATH_MAX];
	int fd;

	*temp_pathname = NULL;
	if (!FUNC0(solib, path, sizeof(path))) {
		errno = ENOENT;
		return (-1);
	}
	fd = FUNC1(path, o_flags, 0);
	if (fd >= 0)
		*temp_pathname = FUNC2(path);
	return (fd);
}