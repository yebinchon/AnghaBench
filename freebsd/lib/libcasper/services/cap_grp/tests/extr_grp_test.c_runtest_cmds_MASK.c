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
typedef  int /*<<< orphan*/  bufs ;
typedef  int /*<<< orphan*/  bufc ;

/* Variables and functions */
 unsigned int GETGRENT0 ; 
 unsigned int GETGRENT1 ; 
 unsigned int GETGRENT2 ; 
 unsigned int GETGRENT_R0 ; 
 unsigned int GETGRENT_R1 ; 
 unsigned int GETGRENT_R2 ; 
 unsigned int GETGRGID ; 
 unsigned int GETGRGID_R ; 
 unsigned int GETGRNAM ; 
 unsigned int GETGRNAM_R ; 
 int /*<<< orphan*/  GID_OPERATOR ; 
 int /*<<< orphan*/  GID_WHEEL ; 
 unsigned int SETGRENT ; 
 struct group* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct group*,char*,int,struct group**) ; 
 struct group* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct group*,char*,int,struct group**) ; 
 struct group* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,struct group*,char*,int,struct group**) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 struct group* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct group*,char*,int,struct group**) ; 
 struct group* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct group*,char*,int,struct group**) ; 
 struct group* FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,struct group*,char*,int,struct group**) ; 
 scalar_t__ FUNC13 (struct group*,struct group*) ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static unsigned int
FUNC15(cap_channel_t *capgrp)
{
	char bufs[1024], bufc[1024];
	unsigned int result;
	struct group *grps, *grpc;
	struct group sts, stc;

	result = 0;

	(void)FUNC14();
	if (FUNC6(capgrp) == 1)
		result |= SETGRENT;

	grps = FUNC7();
	grpc = FUNC0(capgrp);
	if (FUNC13(grps, grpc)) {
		result |= GETGRENT0;
		grps = FUNC7();
		grpc = FUNC0(capgrp);
		if (FUNC13(grps, grpc))
			result |= GETGRENT1;
	}

	FUNC8(&sts, bufs, sizeof(bufs), &grps);
	FUNC1(capgrp, &stc, bufc, sizeof(bufc), &grpc);
	if (FUNC13(grps, grpc)) {
		result |= GETGRENT_R0;
		FUNC8(&sts, bufs, sizeof(bufs), &grps);
		FUNC1(capgrp, &stc, bufc, sizeof(bufc), &grpc);
		if (FUNC13(grps, grpc))
			result |= GETGRENT_R1;
	}

	(void)FUNC14();
	if (FUNC6(capgrp) == 1)
		result |= SETGRENT;

	FUNC8(&sts, bufs, sizeof(bufs), &grps);
	FUNC1(capgrp, &stc, bufc, sizeof(bufc), &grpc);
	if (FUNC13(grps, grpc))
		result |= GETGRENT_R2;

	grps = FUNC7();
	grpc = FUNC0(capgrp);
	if (FUNC13(grps, grpc))
		result |= GETGRENT2;

	grps = FUNC11("wheel");
	grpc = FUNC4(capgrp, "wheel");
	if (FUNC13(grps, grpc)) {
		grps = FUNC11("operator");
		grpc = FUNC4(capgrp, "operator");
		if (FUNC13(grps, grpc))
			result |= GETGRNAM;
	}

	FUNC12("wheel", &sts, bufs, sizeof(bufs), &grps);
	FUNC5(capgrp, "wheel", &stc, bufc, sizeof(bufc), &grpc);
	if (FUNC13(grps, grpc)) {
		FUNC12("operator", &sts, bufs, sizeof(bufs), &grps);
		FUNC5(capgrp, "operator", &stc, bufc, sizeof(bufc),
		    &grpc);
		if (FUNC13(grps, grpc))
			result |= GETGRNAM_R;
	}

	grps = FUNC9(GID_WHEEL);
	grpc = FUNC2(capgrp, GID_WHEEL);
	if (FUNC13(grps, grpc)) {
		grps = FUNC9(GID_OPERATOR);
		grpc = FUNC2(capgrp, GID_OPERATOR);
		if (FUNC13(grps, grpc))
			result |= GETGRGID;
	}

	FUNC10(GID_WHEEL, &sts, bufs, sizeof(bufs), &grps);
	FUNC3(capgrp, GID_WHEEL, &stc, bufc, sizeof(bufc), &grpc);
	if (FUNC13(grps, grpc)) {
		FUNC10(GID_OPERATOR, &sts, bufs, sizeof(bufs), &grps);
		FUNC3(capgrp, GID_OPERATOR, &stc, bufc, sizeof(bufc),
		    &grpc);
		if (FUNC13(grps, grpc))
			result |= GETGRGID_R;
	}

	return (result);
}