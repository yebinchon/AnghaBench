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
struct futx {int /*<<< orphan*/  fu_user; } ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  _PATH_UTX_LASTLOGIN ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct futx*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct futx const*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(const struct futx *fu)
{
	struct futx fe;
	FILE *fp;
	int error, ret;

	ret = 0;

	/*
	 * Write an entry to lastlogin.  Overwrite the entry if the
	 * current user already has an entry.  If not, append a new
	 * entry.
	 */
	fp = FUNC3(_PATH_UTX_LASTLOGIN);
	if (fp == NULL)
		return (-1);
	while (FUNC1(&fe, sizeof fe, 1, fp) == 1) {
		if (FUNC5(fu->fu_user, fe.fu_user, sizeof fe.fu_user) != 0)
			continue;

		/* Found a previous lastlogin entry for this user. */
		ret = FUNC2(fp, -(off_t)sizeof fe, SEEK_CUR);
		break;
	}
	if (ret == -1)
		error = errno;
	else if (FUNC4(fu, sizeof *fu, 1, fp) < 1) {
		error = errno;
		ret = -1;
	}
	FUNC0(fp);
	if (ret == -1)
		errno = error;
	return (ret);
}