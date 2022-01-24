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
struct stat {scalar_t__ st_uid; int st_mode; } ;

/* Variables and functions */
 int MAXDIRS ; 
 int S_IWGRP ; 
 int S_IWOTH ; 
 char const** dirs ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 int /*<<< orphan*/  insecure ; 
 int ndirs ; 
 int FUNC1 (char const*,struct stat*) ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 

__attribute__((used)) static void
FUNC5(const char *hintsfile, const char *name, int trusted)
{
	struct stat 	stbuf;
	int		i;

	/* Do some security checks */
	if (!trusted && !insecure) {
		if (FUNC1(name, &stbuf) == -1) {
			FUNC3("%s", name);
			return;
		}
		if (stbuf.st_uid != 0) {
			FUNC4("%s: ignoring directory not owned by root", name);
			return;
		}
		if ((stbuf.st_mode & S_IWOTH) != 0) {
			FUNC4("%s: ignoring world-writable directory", name);
			return;
		}
		if ((stbuf.st_mode & S_IWGRP) != 0) {
			FUNC4("%s: ignoring group-writable directory", name);
			return;
		}
	}

	for (i = 0;  i < ndirs;  i++)
		if (FUNC2(dirs[i], name) == 0)
			return;
	if (ndirs >= MAXDIRS)
		FUNC0(1, "\"%s\": Too many directories in path", hintsfile);
	dirs[ndirs++] = name;
}