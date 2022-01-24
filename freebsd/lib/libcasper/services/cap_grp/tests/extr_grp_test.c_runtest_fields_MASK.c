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
struct group {int dummy; } ;
typedef  int /*<<< orphan*/  cap_channel_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  GID_WHEEL ; 
 struct group* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct group*,char*,int,struct group**) ; 
 struct group* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct group*,char*,int,struct group**) ; 
 struct group* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,struct group*,char*,int,struct group**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC7 (struct group*) ; 

__attribute__((used)) static bool
FUNC8(cap_channel_t *capgrp, unsigned int expected)
{
	char buf[1024];
	struct group *grp;
	struct group st;

	(void)FUNC6(capgrp);
	grp = FUNC0(capgrp);
	if (FUNC7(grp) != expected)
		return (false);

	(void)FUNC6(capgrp);
	FUNC1(capgrp, &st, buf, sizeof(buf), &grp);
	if (FUNC7(grp) != expected)
		return (false);

	grp = FUNC4(capgrp, "wheel");
	if (FUNC7(grp) != expected)
		return (false);

	FUNC5(capgrp, "wheel", &st, buf, sizeof(buf), &grp);
	if (FUNC7(grp) != expected)
		return (false);

	grp = FUNC2(capgrp, GID_WHEEL);
	if (FUNC7(grp) != expected)
		return (false);

	FUNC3(capgrp, GID_WHEEL, &st, buf, sizeof(buf), &grp);
	if (FUNC7(grp) != expected)
		return (false);

	return (true);
}