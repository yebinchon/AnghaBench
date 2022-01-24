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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(const Char *dir, const Char *file)
     /* return 1 if dir/file is a directory */
     /* uses stat rather than lstat to get dest. */
{
    if (dir) {
	Char *path;
	char *cpath;
	struct stat statb;

	path = FUNC3(dir, file);
	cpath = FUNC4(path);
	FUNC6(path);
	if (FUNC5(cpath, &statb) >= 0) {	/* resolve through symlink */
#ifdef S_ISSOCK
	    if (S_ISSOCK(statb.st_mode))	/* Socket */
		return 0;
#endif
#ifdef S_ISFIFO
	    if (S_ISFIFO(statb.st_mode))	/* Named Pipe */
		return 0;
#endif
	    if (FUNC0(statb.st_mode))	/* normal Directory */
		return 1;
	}
    }
    return 0;
}