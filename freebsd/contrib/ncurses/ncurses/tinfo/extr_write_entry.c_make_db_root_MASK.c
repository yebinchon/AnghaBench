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
typedef  int /*<<< orphan*/  fullpath ;
typedef  int /*<<< orphan*/  DB ;

/* Variables and functions */
 int PATH_MAX ; 
 int R_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int W_OK ; 
 int X_OK ; 
 scalar_t__ FUNC1 (char const*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,char const*,int) ; 
 int FUNC5 (char const*,int) ; 
 int FUNC6 (char const*,struct stat*) ; 

__attribute__((used)) static int
FUNC7(const char *path)
{
    int rc;
    char fullpath[PATH_MAX];

    if ((rc = FUNC4(fullpath, path, sizeof(fullpath))) == 0) {
#if USE_HASHED_DB
	DB *capdbp;

	if ((capdbp = _nc_db_open(fullpath, TRUE)) == NULL) {
	    rc = -1;
	} else if (_nc_db_close(capdbp) < 0) {
	    rc = -1;
	}
#else
	struct stat statbuf;

	if ((rc = FUNC6(path, &statbuf)) < 0) {
	    rc = FUNC5(path
#if !defined(__MINGW32__)
		       ,0777
#endif
		);
	} else if (FUNC1(path, R_OK | W_OK | X_OK) < 0) {
	    rc = -1;		/* permission denied */
	} else if (!(FUNC0(statbuf.st_mode))) {
	    rc = -1;		/* not a directory */
	}
#endif
    }
    return rc;
}