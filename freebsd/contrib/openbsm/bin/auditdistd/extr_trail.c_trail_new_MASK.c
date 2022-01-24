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
struct trail {int tr_filefd; int /*<<< orphan*/  tr_magic; int /*<<< orphan*/ * tr_dirfp; int /*<<< orphan*/  tr_dirname; } ;

/* Variables and functions */
 scalar_t__ ENAMETOOLONG ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  TRAIL_MAGIC ; 
 struct trail* FUNC0 (int,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (struct trail*) ; 
 int FUNC2 (char const*,int) ; 
 void* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int FUNC6 (int /*<<< orphan*/ ,char const*,int) ; 

struct trail *
FUNC7(const char *dirname, bool create)
{
	struct trail *trail;

	trail = FUNC0(1, sizeof(*trail));

	if (FUNC6(trail->tr_dirname, dirname, sizeof(trail->tr_dirname)) >=
	    sizeof(trail->tr_dirname)) {
		FUNC1(trail);
		FUNC5("Directory name too long (\"%s\").", dirname);
		errno = ENAMETOOLONG;
		return (NULL);
	}
	trail->tr_dirfp = FUNC3(dirname);
	if (trail->tr_dirfp == NULL) {
		if (create && errno == ENOENT) {
			if (FUNC2(dirname, 0700) == -1) {
				FUNC4(LOG_ERR,
				    "Unable to create directory \"%s\"",
				    dirname);
				FUNC1(trail);
				return (NULL);
			}
			/* TODO: Set directory ownership. */
		} else {
			FUNC4(LOG_ERR,
			    "Unable to open directory \"%s\"",
			    dirname);
			FUNC1(trail);
			return (NULL);
		}
		trail->tr_dirfp = FUNC3(dirname);
		if (trail->tr_dirfp == NULL) {
			FUNC4(LOG_ERR,
			    "Unable to open directory \"%s\"",
			    dirname);
			FUNC1(trail);
			return (NULL);
		}
	}
	trail->tr_filefd = -1;
	trail->tr_magic = TRAIL_MAGIC;
	return (trail);
}