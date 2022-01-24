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
struct stat {int st_mode; } ;
typedef  scalar_t__ const Char ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int S_IXGRP ; 
 int S_IXOTH ; 
 int S_IXUSR ; 
 scalar_t__ const* FUNC2 (scalar_t__ const*,scalar_t__ const*) ; 
 int /*<<< orphan*/  X_OK ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (scalar_t__ const*) ; 
 int FUNC5 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__ const*) ; 

int
FUNC7(const Char *dir, const Char *name, int dir_ok)
{
    struct stat stbuf;
    char   *strname;

    if (dir && *dir) {
	Char *path;

	path = FUNC2(dir, name);
	strname = FUNC4(path);
	FUNC6(path);
    }
    else
	strname = FUNC4(name);

    return (FUNC5(strname, &stbuf) != -1 &&
	    ((dir_ok && FUNC0(stbuf.st_mode)) ||
	     (FUNC1(stbuf.st_mode) &&
    /* save time by not calling access() in the hopeless case */
	      (stbuf.st_mode & (S_IXOTH | S_IXGRP | S_IXUSR)) &&
	      FUNC3(strname, X_OK) == 0
	)));
}