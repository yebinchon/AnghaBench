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
struct trail {scalar_t__ tr_magic; int /*<<< orphan*/  tr_dirname; int /*<<< orphan*/  tr_dirfp; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ TRAIL_MAGIC ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*) ; 
 int FUNC4 (int,char const*,int /*<<< orphan*/ ) ; 

void
FUNC5(struct trail *trail, const char *filename)
{
	int dfd;

	FUNC0(trail->tr_magic == TRAIL_MAGIC);
	FUNC0(filename != NULL);
	FUNC0(filename[0] != '\0');

	dfd = FUNC1(trail->tr_dirfp);
	FUNC0(dfd >= 0);

	if (FUNC4(dfd, filename, 0) == -1) {
		FUNC3(LOG_ERR, "Unable to remove \"%s/%s\"",
		    trail->tr_dirname, filename);
	} else {
		FUNC2(1, "Trail file \"%s/%s\" removed.",
		    trail->tr_dirname, filename);
	}
}