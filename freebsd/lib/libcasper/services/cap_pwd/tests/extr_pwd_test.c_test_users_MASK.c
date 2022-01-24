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
typedef  int uid_t ;
typedef  int /*<<< orphan*/  cap_channel_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ENOTCAPABLE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const**,int,int*,int) ; 
 scalar_t__ errno ; 
 int FUNC4 (int /*<<< orphan*/ *,char const**,int*,int) ; 

__attribute__((used)) static void
FUNC5(cap_channel_t *origcappwd)
{
	cap_channel_t *cappwd;
	const char *names[6];
	uid_t uids[6];

	/*
	 * Allow:
	 * users:
	 *     names: root, toor, daemon, operator, bin, tty
	 *     uids:
	 */
	cappwd = FUNC1(origcappwd);
	FUNC0(cappwd != NULL);

	names[0] = "root";
	names[1] = "toor";
	names[2] = "daemon";
	names[3] = "operator";
	names[4] = "bin";
	names[5] = "tty";
	FUNC0(FUNC3(cappwd, names, 6, NULL, 0) == 0);
	uids[0] = 0;
	uids[1] = 0;
	uids[2] = 1;
	uids[3] = 2;
	uids[4] = 3;
	uids[5] = 4;

	FUNC0(FUNC4(cappwd, names, uids, 6));

	FUNC2(cappwd);

	/*
	 * Allow:
	 * users:
	 *     names: daemon, operator, bin
	 *     uids:
	 */
	cappwd = FUNC1(origcappwd);
	FUNC0(cappwd != NULL);

	names[0] = "daemon";
	names[1] = "operator";
	names[2] = "bin";
	FUNC0(FUNC3(cappwd, names, 3, NULL, 0) == 0);
	names[3] = "tty";
	FUNC0(FUNC3(cappwd, names, 4, NULL, 0) == -1 &&
	    errno == ENOTCAPABLE);
	names[0] = "tty";
	FUNC0(FUNC3(cappwd, names, 1, NULL, 0) == -1 &&
	    errno == ENOTCAPABLE);
	names[0] = "daemon";
	uids[0] = 1;
	uids[1] = 2;
	uids[2] = 3;

	FUNC0(FUNC4(cappwd, names, uids, 3));

	FUNC2(cappwd);

	/*
	 * Allow:
	 * users:
	 *     names: daemon, bin, tty
	 *     uids:
	 */
	cappwd = FUNC1(origcappwd);
	FUNC0(cappwd != NULL);

	names[0] = "daemon";
	names[1] = "bin";
	names[2] = "tty";
	FUNC0(FUNC3(cappwd, names, 3, NULL, 0) == 0);
	names[3] = "operator";
	FUNC0(FUNC3(cappwd, names, 4, NULL, 0) == -1 &&
	    errno == ENOTCAPABLE);
	names[0] = "operator";
	FUNC0(FUNC3(cappwd, names, 1, NULL, 0) == -1 &&
	    errno == ENOTCAPABLE);
	names[0] = "daemon";
	uids[0] = 1;
	uids[1] = 3;
	uids[2] = 4;

	FUNC0(FUNC4(cappwd, names, uids, 3));

	FUNC2(cappwd);

	/*
	 * Allow:
	 * users:
	 *     names:
	 *     uids: 1, 2, 3
	 */
	cappwd = FUNC1(origcappwd);
	FUNC0(cappwd != NULL);

	names[0] = "daemon";
	names[1] = "operator";
	names[2] = "bin";
	uids[0] = 1;
	uids[1] = 2;
	uids[2] = 3;
	FUNC0(FUNC3(cappwd, NULL, 0, uids, 3) == 0);
	uids[3] = 4;
	FUNC0(FUNC3(cappwd, NULL, 0, uids, 4) == -1 &&
	    errno == ENOTCAPABLE);
	uids[0] = 4;
	FUNC0(FUNC3(cappwd, NULL, 0, uids, 1) == -1 &&
	    errno == ENOTCAPABLE);
	uids[0] = 1;

	FUNC0(FUNC4(cappwd, names, uids, 3));

	FUNC2(cappwd);

	/*
	 * Allow:
	 * users:
	 *     names:
	 *     uids: 1, 3, 4
	 */
	cappwd = FUNC1(origcappwd);
	FUNC0(cappwd != NULL);

	names[0] = "daemon";
	names[1] = "bin";
	names[2] = "tty";
	uids[0] = 1;
	uids[1] = 3;
	uids[2] = 4;
	FUNC0(FUNC3(cappwd, NULL, 0, uids, 3) == 0);
	uids[3] = 5;
	FUNC0(FUNC3(cappwd, NULL, 0, uids, 4) == -1 &&
	    errno == ENOTCAPABLE);
	uids[0] = 5;
	FUNC0(FUNC3(cappwd, NULL, 0, uids, 1) == -1 &&
	    errno == ENOTCAPABLE);
	uids[0] = 1;

	FUNC0(FUNC4(cappwd, names, uids, 3));

	FUNC2(cappwd);

	/*
	 * Allow:
	 * users:
	 *     names: bin
	 *     uids:
	 */
	cappwd = FUNC1(origcappwd);
	FUNC0(cappwd != NULL);

	names[0] = "bin";
	FUNC0(FUNC3(cappwd, names, 1, NULL, 0) == 0);
	names[1] = "operator";
	FUNC0(FUNC3(cappwd, names, 2, NULL, 0) == -1 &&
	    errno == ENOTCAPABLE);
	names[0] = "operator";
	FUNC0(FUNC3(cappwd, names, 1, NULL, 0) == -1 &&
	    errno == ENOTCAPABLE);
	names[0] = "bin";
	uids[0] = 3;

	FUNC0(FUNC4(cappwd, names, uids, 1));

	FUNC2(cappwd);

	/*
	 * Allow:
	 * users:
	 *     names: daemon, tty
	 *     uids:
	 */
	cappwd = FUNC1(origcappwd);
	FUNC0(cappwd != NULL);

	names[0] = "daemon";
	names[1] = "tty";
	FUNC0(FUNC3(cappwd, names, 2, NULL, 0) == 0);
	names[2] = "operator";
	FUNC0(FUNC3(cappwd, names, 3, NULL, 0) == -1 &&
	    errno == ENOTCAPABLE);
	names[0] = "operator";
	FUNC0(FUNC3(cappwd, names, 1, NULL, 0) == -1 &&
	    errno == ENOTCAPABLE);
	names[0] = "daemon";
	uids[0] = 1;
	uids[1] = 4;

	FUNC0(FUNC4(cappwd, names, uids, 2));

	FUNC2(cappwd);

	/*
	 * Allow:
	 * users:
	 *     names:
	 *     uids: 3
	 */
	cappwd = FUNC1(origcappwd);
	FUNC0(cappwd != NULL);

	names[0] = "bin";
	uids[0] = 3;
	FUNC0(FUNC3(cappwd, NULL, 0, uids, 1) == 0);
	uids[1] = 4;
	FUNC0(FUNC3(cappwd, NULL, 0, uids, 2) == -1 &&
	    errno == ENOTCAPABLE);
	uids[0] = 4;
	FUNC0(FUNC3(cappwd, NULL, 0, uids, 1) == -1 &&
	    errno == ENOTCAPABLE);
	uids[0] = 3;

	FUNC0(FUNC4(cappwd, names, uids, 1));

	FUNC2(cappwd);

	/*
	 * Allow:
	 * users:
	 *     names:
	 *     uids: 1, 4
	 */
	cappwd = FUNC1(origcappwd);
	FUNC0(cappwd != NULL);

	names[0] = "daemon";
	names[1] = "tty";
	uids[0] = 1;
	uids[1] = 4;
	FUNC0(FUNC3(cappwd, NULL, 0, uids, 2) == 0);
	uids[2] = 3;
	FUNC0(FUNC3(cappwd, NULL, 0, uids, 3) == -1 &&
	    errno == ENOTCAPABLE);
	uids[0] = 3;
	FUNC0(FUNC3(cappwd, NULL, 0, uids, 1) == -1 &&
	    errno == ENOTCAPABLE);
	uids[0] = 1;

	FUNC0(FUNC4(cappwd, names, uids, 2));

	FUNC2(cappwd);
}