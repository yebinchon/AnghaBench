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
struct futx {int fu_type; int /*<<< orphan*/  fu_id; } ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  fe ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  BOOT_TIME 132 
#define  DEAD_PROCESS 131 
#define  INIT_PROCESS 130 
#define  LOGIN_PROCESS 129 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
#define  USER_PROCESS 128 
 int /*<<< orphan*/  _PATH_UTX_ACTIVE ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct futx*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct futx const*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(const struct futx *fu)
{
	FILE *fp;
	struct futx fe;
	off_t partial;
	int error, ret;

	partial = -1;
	ret = 0;

	/*
	 * Register user login sessions.  Overwrite entries of sessions
	 * that have already been terminated.
	 */
	fp = FUNC4(_PATH_UTX_ACTIVE);
	if (fp == NULL)
		return (-1);
	while (FUNC1(&fe, sizeof(fe), 1, fp) == 1) {
		switch (fe.fu_type) {
		case BOOT_TIME:
			/* Leave these intact. */
			break;
		case USER_PROCESS:
		case INIT_PROCESS:
		case LOGIN_PROCESS:
		case DEAD_PROCESS:
			/* Overwrite when ut_id matches. */
			if (FUNC6(fu->fu_id, fe.fu_id, sizeof(fe.fu_id)) ==
			    0) {
				ret = FUNC2(fp, -(off_t)sizeof(fe), SEEK_CUR);
				goto exact;
			}
			if (fe.fu_type != DEAD_PROCESS)
				break;
			/* FALLTHROUGH */
		default:
			/* Allow us to overwrite unused records. */
			if (partial == -1) {
				partial = FUNC3(fp);
				/*
				 * Distinguish errors from valid values so we
				 * don't overwrite good data by accident.
				 */
				if (partial != -1)
					partial -= (off_t)sizeof(fe);
			}
			break;
		}
	}

	/*
	 * No exact match found.  Use the partial match.  If no partial
	 * match was found, just append a new record.
	 */
	if (partial != -1)
		ret = FUNC2(fp, partial, SEEK_SET);
exact:
	if (ret == -1)
		error = errno;
	else if (FUNC5(fu, sizeof(*fu), 1, fp) < 1)
		error = errno;
	else
		error = 0;
	FUNC0(fp);
	if (error != 0)
		errno = error;
	return (error == 0 ? 0 : 1);
}