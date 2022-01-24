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
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  fe ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int ESRCH ; 
#define  INIT_PROCESS 130 
#define  LOGIN_PROCESS 129 
 int /*<<< orphan*/  SEEK_CUR ; 
#define  USER_PROCESS 128 
 int /*<<< orphan*/  _PATH_UTX_ACTIVE ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct futx*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct futx*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(struct futx *fu)
{
	FILE *fp;
	struct futx fe;
	int error, ret;

	/*
	 * Remove user login sessions, having the same ut_id.
	 */
	fp = FUNC3(_PATH_UTX_ACTIVE);
	if (fp == NULL)
		return (-1);
	error = ESRCH;
	ret = -1;
	while (FUNC1(&fe, sizeof(fe), 1, fp) == 1 && ret != 0)
		switch (fe.fu_type) {
		case USER_PROCESS:
		case INIT_PROCESS:
		case LOGIN_PROCESS:
			if (FUNC5(fu->fu_id, fe.fu_id, sizeof(fe.fu_id)) != 0)
				continue;

			/* Terminate session. */
			if (FUNC2(fp, -(off_t)sizeof(fe), SEEK_CUR) == -1)
				error = errno;
			else if (FUNC4(fu, sizeof(*fu), 1, fp) < 1)
				error = errno;
			else
				ret = 0;

		}

	FUNC0(fp);
	if (ret != 0)
		errno = error;
	return (ret);
}