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
struct devfs_rule {int dummy; } ;
typedef  int /*<<< orphan*/  devfs_rsnum ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,unsigned long,struct devfs_rule*) ; 
 int /*<<< orphan*/  mpfd ; 
 int /*<<< orphan*/  FUNC6 (struct devfs_rule*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * stdin ; 

__attribute__((used)) static void
FUNC7(FILE *fp, unsigned long request, devfs_rsnum rsnum)
{
	struct devfs_rule dr;
	char *line;
	int rv;

	FUNC0(fp == stdin);	/* XXX: De-hardcode "stdin" from error msg. */
	while (FUNC1(fp, &line)) {
		FUNC6(&dr, line, rsnum);
		rv = FUNC5(mpfd, request, &dr);
		if (rv == -1)
			FUNC2(1, "ioctl");
		FUNC4(line);	/* efgetln() always malloc()s. */
	}
	if (FUNC3(stdin))
		FUNC2(1, "stdin");
}