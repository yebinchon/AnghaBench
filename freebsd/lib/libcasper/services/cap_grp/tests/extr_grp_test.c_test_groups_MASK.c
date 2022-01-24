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
typedef  int gid_t ;
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
FUNC5(cap_channel_t *origcapgrp)
{
	cap_channel_t *capgrp;
	const char *names[5];
	gid_t gids[5];

	/*
	 * Allow:
	 * groups:
	 *     names: wheel, daemon, kmem, sys, tty
	 *     gids:
	 */
	capgrp = FUNC1(origcapgrp);
	FUNC0(capgrp != NULL);

	names[0] = "wheel";
	names[1] = "daemon";
	names[2] = "kmem";
	names[3] = "sys";
	names[4] = "tty";
	FUNC0(FUNC3(capgrp, names, 5, NULL, 0) == 0);
	gids[0] = 0;
	gids[1] = 1;
	gids[2] = 2;
	gids[3] = 3;
	gids[4] = 4;

	FUNC0(FUNC4(capgrp, names, gids, 5));

	FUNC2(capgrp);

	/*
	 * Allow:
	 * groups:
	 *     names: kmem, sys, tty
	 *     gids:
	 */
	capgrp = FUNC1(origcapgrp);
	FUNC0(capgrp != NULL);

	names[0] = "kmem";
	names[1] = "sys";
	names[2] = "tty";
	FUNC0(FUNC3(capgrp, names, 3, NULL, 0) == 0);
	names[3] = "daemon";
	FUNC0(FUNC3(capgrp, names, 4, NULL, 0) == -1 &&
	    errno == ENOTCAPABLE);
	names[0] = "daemon";
	FUNC0(FUNC3(capgrp, names, 1, NULL, 0) == -1 &&
	    errno == ENOTCAPABLE);
	names[0] = "kmem";
	gids[0] = 2;
	gids[1] = 3;
	gids[2] = 4;

	FUNC0(FUNC4(capgrp, names, gids, 3));

	FUNC2(capgrp);

	/*
	 * Allow:
	 * groups:
	 *     names: wheel, kmem, tty
	 *     gids:
	 */
	capgrp = FUNC1(origcapgrp);
	FUNC0(capgrp != NULL);

	names[0] = "wheel";
	names[1] = "kmem";
	names[2] = "tty";
	FUNC0(FUNC3(capgrp, names, 3, NULL, 0) == 0);
	names[3] = "daemon";
	FUNC0(FUNC3(capgrp, names, 4, NULL, 0) == -1 &&
	    errno == ENOTCAPABLE);
	names[0] = "daemon";
	FUNC0(FUNC3(capgrp, names, 1, NULL, 0) == -1 &&
	    errno == ENOTCAPABLE);
	names[0] = "wheel";
	gids[0] = 0;
	gids[1] = 2;
	gids[2] = 4;

	FUNC0(FUNC4(capgrp, names, gids, 3));

	FUNC2(capgrp);

	/*
	 * Allow:
	 * groups:
	 *     names:
	 *     gids: 2, 3, 4
	 */
	capgrp = FUNC1(origcapgrp);
	FUNC0(capgrp != NULL);

	names[0] = "kmem";
	names[1] = "sys";
	names[2] = "tty";
	gids[0] = 2;
	gids[1] = 3;
	gids[2] = 4;
	FUNC0(FUNC3(capgrp, NULL, 0, gids, 3) == 0);
	gids[3] = 0;
	FUNC0(FUNC3(capgrp, NULL, 0, gids, 4) == -1 &&
	    errno == ENOTCAPABLE);
	gids[0] = 0;
	FUNC0(FUNC3(capgrp, NULL, 0, gids, 1) == -1 &&
	    errno == ENOTCAPABLE);
	gids[0] = 2;

	FUNC0(FUNC4(capgrp, names, gids, 3));

	FUNC2(capgrp);

	/*
	 * Allow:
	 * groups:
	 *     names:
	 *     gids: 0, 2, 4
	 */
	capgrp = FUNC1(origcapgrp);
	FUNC0(capgrp != NULL);

	names[0] = "wheel";
	names[1] = "kmem";
	names[2] = "tty";
	gids[0] = 0;
	gids[1] = 2;
	gids[2] = 4;
	FUNC0(FUNC3(capgrp, NULL, 0, gids, 3) == 0);
	gids[3] = 1;
	FUNC0(FUNC3(capgrp, NULL, 0, gids, 4) == -1 &&
	    errno == ENOTCAPABLE);
	gids[0] = 1;
	FUNC0(FUNC3(capgrp, NULL, 0, gids, 1) == -1 &&
	    errno == ENOTCAPABLE);
	gids[0] = 0;

	FUNC0(FUNC4(capgrp, names, gids, 3));

	FUNC2(capgrp);

	/*
	 * Allow:
	 * groups:
	 *     names: kmem
	 *     gids:
	 */
	capgrp = FUNC1(origcapgrp);
	FUNC0(capgrp != NULL);

	names[0] = "kmem";
	FUNC0(FUNC3(capgrp, names, 1, NULL, 0) == 0);
	names[1] = "daemon";
	FUNC0(FUNC3(capgrp, names, 2, NULL, 0) == -1 &&
	    errno == ENOTCAPABLE);
	names[0] = "daemon";
	FUNC0(FUNC3(capgrp, names, 1, NULL, 0) == -1 &&
	    errno == ENOTCAPABLE);
	names[0] = "kmem";
	gids[0] = 2;

	FUNC0(FUNC4(capgrp, names, gids, 1));

	FUNC2(capgrp);

	/*
	 * Allow:
	 * groups:
	 *     names: wheel, tty
	 *     gids:
	 */
	capgrp = FUNC1(origcapgrp);
	FUNC0(capgrp != NULL);

	names[0] = "wheel";
	names[1] = "tty";
	FUNC0(FUNC3(capgrp, names, 2, NULL, 0) == 0);
	names[2] = "daemon";
	FUNC0(FUNC3(capgrp, names, 3, NULL, 0) == -1 &&
	    errno == ENOTCAPABLE);
	names[0] = "daemon";
	FUNC0(FUNC3(capgrp, names, 1, NULL, 0) == -1 &&
	    errno == ENOTCAPABLE);
	names[0] = "wheel";
	gids[0] = 0;
	gids[1] = 4;

	FUNC0(FUNC4(capgrp, names, gids, 2));

	FUNC2(capgrp);

	/*
	 * Allow:
	 * groups:
	 *     names:
	 *     gids: 2
	 */
	capgrp = FUNC1(origcapgrp);
	FUNC0(capgrp != NULL);

	names[0] = "kmem";
	gids[0] = 2;
	FUNC0(FUNC3(capgrp, NULL, 0, gids, 1) == 0);
	gids[1] = 1;
	FUNC0(FUNC3(capgrp, NULL, 0, gids, 2) == -1 &&
	    errno == ENOTCAPABLE);
	gids[0] = 1;
	FUNC0(FUNC3(capgrp, NULL, 0, gids, 1) == -1 &&
	    errno == ENOTCAPABLE);
	gids[0] = 2;

	FUNC0(FUNC4(capgrp, names, gids, 1));

	FUNC2(capgrp);

	/*
	 * Allow:
	 * groups:
	 *     names:
	 *     gids: 0, 4
	 */
	capgrp = FUNC1(origcapgrp);
	FUNC0(capgrp != NULL);

	names[0] = "wheel";
	names[1] = "tty";
	gids[0] = 0;
	gids[1] = 4;
	FUNC0(FUNC3(capgrp, NULL, 0, gids, 2) == 0);
	gids[2] = 1;
	FUNC0(FUNC3(capgrp, NULL, 0, gids, 3) == -1 &&
	    errno == ENOTCAPABLE);
	gids[0] = 1;
	FUNC0(FUNC3(capgrp, NULL, 0, gids, 1) == -1 &&
	    errno == ENOTCAPABLE);
	gids[0] = 0;

	FUNC0(FUNC4(capgrp, names, gids, 2));

	FUNC2(capgrp);
}