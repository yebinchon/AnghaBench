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
typedef  int /*<<< orphan*/  cap_channel_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ENOTCAPABLE ; 
 int GR_GID ; 
 int GR_MEM ; 
 int GR_NAME ; 
 int GR_PASSWD ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const**,int) ; 
 scalar_t__ errno ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC5(cap_channel_t *origcapgrp)
{
	cap_channel_t *capgrp;
	const char *fields[4];

	/* No limits. */

	FUNC0(FUNC4(origcapgrp, GR_NAME | GR_PASSWD | GR_GID | GR_MEM));

	/*
	 * Allow:
	 * fields: gr_name, gr_passwd, gr_gid, gr_mem
	 */
	capgrp = FUNC1(origcapgrp);
	FUNC0(capgrp != NULL);

	fields[0] = "gr_name";
	fields[1] = "gr_passwd";
	fields[2] = "gr_gid";
	fields[3] = "gr_mem";
	FUNC0(FUNC3(capgrp, fields, 4) == 0);

	FUNC0(FUNC4(capgrp, GR_NAME | GR_PASSWD | GR_GID | GR_MEM));

	FUNC2(capgrp);

	/*
	 * Allow:
	 * fields: gr_passwd, gr_gid, gr_mem
	 */
	capgrp = FUNC1(origcapgrp);
	FUNC0(capgrp != NULL);

	fields[0] = "gr_passwd";
	fields[1] = "gr_gid";
	fields[2] = "gr_mem";
	FUNC0(FUNC3(capgrp, fields, 3) == 0);
	fields[0] = "gr_name";
	fields[1] = "gr_passwd";
	fields[2] = "gr_gid";
	fields[3] = "gr_mem";
	FUNC0(FUNC3(capgrp, fields, 4) == -1 &&
	    errno == ENOTCAPABLE);

	FUNC0(FUNC4(capgrp, GR_PASSWD | GR_GID | GR_MEM));

	FUNC2(capgrp);

	/*
	 * Allow:
	 * fields: gr_name, gr_gid, gr_mem
	 */
	capgrp = FUNC1(origcapgrp);
	FUNC0(capgrp != NULL);

	fields[0] = "gr_name";
	fields[1] = "gr_gid";
	fields[2] = "gr_mem";
	FUNC0(FUNC3(capgrp, fields, 3) == 0);
	fields[0] = "gr_name";
	fields[1] = "gr_passwd";
	fields[2] = "gr_gid";
	fields[3] = "gr_mem";
	FUNC0(FUNC3(capgrp, fields, 4) == -1 &&
	    errno == ENOTCAPABLE);
	fields[0] = "gr_passwd";
	FUNC0(FUNC3(capgrp, fields, 1) == -1 &&
	    errno == ENOTCAPABLE);

	FUNC0(FUNC4(capgrp, GR_NAME | GR_GID | GR_MEM));

	FUNC2(capgrp);

	/*
	 * Allow:
	 * fields: gr_name, gr_passwd, gr_mem
	 */
	capgrp = FUNC1(origcapgrp);
	FUNC0(capgrp != NULL);

	fields[0] = "gr_name";
	fields[1] = "gr_passwd";
	fields[2] = "gr_mem";
	FUNC0(FUNC3(capgrp, fields, 3) == 0);
	fields[0] = "gr_name";
	fields[1] = "gr_passwd";
	fields[2] = "gr_gid";
	fields[3] = "gr_mem";
	FUNC0(FUNC3(capgrp, fields, 4) == -1 &&
	    errno == ENOTCAPABLE);
	fields[0] = "gr_gid";
	FUNC0(FUNC3(capgrp, fields, 1) == -1 &&
	    errno == ENOTCAPABLE);

	FUNC0(FUNC4(capgrp, GR_NAME | GR_PASSWD | GR_MEM));

	FUNC2(capgrp);

	/*
	 * Allow:
	 * fields: gr_name, gr_passwd, gr_gid
	 */
	capgrp = FUNC1(origcapgrp);
	FUNC0(capgrp != NULL);

	fields[0] = "gr_name";
	fields[1] = "gr_passwd";
	fields[2] = "gr_gid";
	FUNC0(FUNC3(capgrp, fields, 3) == 0);
	fields[0] = "gr_name";
	fields[1] = "gr_passwd";
	fields[2] = "gr_gid";
	fields[3] = "gr_mem";
	FUNC0(FUNC3(capgrp, fields, 4) == -1 &&
	    errno == ENOTCAPABLE);
	fields[0] = "gr_mem";
	FUNC0(FUNC3(capgrp, fields, 1) == -1 &&
	    errno == ENOTCAPABLE);

	FUNC0(FUNC4(capgrp, GR_NAME | GR_PASSWD | GR_GID));

	FUNC2(capgrp);

	/*
	 * Allow:
	 * fields: gr_name, gr_passwd
	 */
	capgrp = FUNC1(origcapgrp);
	FUNC0(capgrp != NULL);

	fields[0] = "gr_name";
	fields[1] = "gr_passwd";
	FUNC0(FUNC3(capgrp, fields, 2) == 0);
	fields[0] = "gr_name";
	fields[1] = "gr_passwd";
	fields[2] = "gr_gid";
	fields[3] = "gr_mem";
	FUNC0(FUNC3(capgrp, fields, 4) == -1 &&
	    errno == ENOTCAPABLE);
	fields[0] = "gr_gid";
	FUNC0(FUNC3(capgrp, fields, 1) == -1 &&
	    errno == ENOTCAPABLE);

	FUNC0(FUNC4(capgrp, GR_NAME | GR_PASSWD));

	FUNC2(capgrp);

	/*
	 * Allow:
	 * fields: gr_name, gr_gid
	 */
	capgrp = FUNC1(origcapgrp);
	FUNC0(capgrp != NULL);

	fields[0] = "gr_name";
	fields[1] = "gr_gid";
	FUNC0(FUNC3(capgrp, fields, 2) == 0);
	fields[0] = "gr_name";
	fields[1] = "gr_passwd";
	fields[2] = "gr_gid";
	fields[3] = "gr_mem";
	FUNC0(FUNC3(capgrp, fields, 4) == -1 &&
	    errno == ENOTCAPABLE);
	fields[0] = "gr_mem";
	FUNC0(FUNC3(capgrp, fields, 1) == -1 &&
	    errno == ENOTCAPABLE);

	FUNC0(FUNC4(capgrp, GR_NAME | GR_GID));

	FUNC2(capgrp);

	/*
	 * Allow:
	 * fields: gr_name, gr_mem
	 */
	capgrp = FUNC1(origcapgrp);
	FUNC0(capgrp != NULL);

	fields[0] = "gr_name";
	fields[1] = "gr_mem";
	FUNC0(FUNC3(capgrp, fields, 2) == 0);
	fields[0] = "gr_name";
	fields[1] = "gr_passwd";
	fields[2] = "gr_gid";
	fields[3] = "gr_mem";
	FUNC0(FUNC3(capgrp, fields, 4) == -1 &&
	    errno == ENOTCAPABLE);
	fields[0] = "gr_passwd";
	FUNC0(FUNC3(capgrp, fields, 1) == -1 &&
	    errno == ENOTCAPABLE);

	FUNC0(FUNC4(capgrp, GR_NAME | GR_MEM));

	FUNC2(capgrp);

	/*
	 * Allow:
	 * fields: gr_passwd, gr_gid
	 */
	capgrp = FUNC1(origcapgrp);
	FUNC0(capgrp != NULL);

	fields[0] = "gr_passwd";
	fields[1] = "gr_gid";
	FUNC0(FUNC3(capgrp, fields, 2) == 0);
	fields[0] = "gr_name";
	fields[1] = "gr_passwd";
	fields[2] = "gr_gid";
	fields[3] = "gr_mem";
	FUNC0(FUNC3(capgrp, fields, 4) == -1 &&
	    errno == ENOTCAPABLE);
	fields[0] = "gr_mem";
	FUNC0(FUNC3(capgrp, fields, 1) == -1 &&
	    errno == ENOTCAPABLE);

	FUNC0(FUNC4(capgrp, GR_PASSWD | GR_GID));

	FUNC2(capgrp);

	/*
	 * Allow:
	 * fields: gr_passwd, gr_mem
	 */
	capgrp = FUNC1(origcapgrp);
	FUNC0(capgrp != NULL);

	fields[0] = "gr_passwd";
	fields[1] = "gr_mem";
	FUNC0(FUNC3(capgrp, fields, 2) == 0);
	fields[0] = "gr_name";
	fields[1] = "gr_passwd";
	fields[2] = "gr_gid";
	fields[3] = "gr_mem";
	FUNC0(FUNC3(capgrp, fields, 4) == -1 &&
	    errno == ENOTCAPABLE);
	fields[0] = "gr_gid";
	FUNC0(FUNC3(capgrp, fields, 1) == -1 &&
	    errno == ENOTCAPABLE);

	FUNC0(FUNC4(capgrp, GR_PASSWD | GR_MEM));

	FUNC2(capgrp);

	/*
	 * Allow:
	 * fields: gr_gid, gr_mem
	 */
	capgrp = FUNC1(origcapgrp);
	FUNC0(capgrp != NULL);

	fields[0] = "gr_gid";
	fields[1] = "gr_mem";
	FUNC0(FUNC3(capgrp, fields, 2) == 0);
	fields[0] = "gr_name";
	fields[1] = "gr_passwd";
	fields[2] = "gr_gid";
	fields[3] = "gr_mem";
	FUNC0(FUNC3(capgrp, fields, 4) == -1 &&
	    errno == ENOTCAPABLE);
	fields[0] = "gr_passwd";
	FUNC0(FUNC3(capgrp, fields, 1) == -1 &&
	    errno == ENOTCAPABLE);

	FUNC0(FUNC4(capgrp, GR_GID | GR_MEM));

	FUNC2(capgrp);
}