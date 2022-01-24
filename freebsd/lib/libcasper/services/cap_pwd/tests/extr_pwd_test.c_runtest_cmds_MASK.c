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
struct passwd {int dummy; } ;
typedef  int /*<<< orphan*/  cap_channel_t ;
typedef  int /*<<< orphan*/  bufs ;
typedef  int /*<<< orphan*/  bufc ;

/* Variables and functions */
 unsigned int GETPWENT0 ; 
 unsigned int GETPWENT1 ; 
 unsigned int GETPWENT2 ; 
 unsigned int GETPWENT_R0 ; 
 unsigned int GETPWENT_R1 ; 
 unsigned int GETPWENT_R2 ; 
 unsigned int GETPWNAM ; 
 unsigned int GETPWNAM_R ; 
 unsigned int GETPWUID ; 
 unsigned int GETPWUID_R ; 
 int /*<<< orphan*/  UID_OPERATOR ; 
 int /*<<< orphan*/  UID_ROOT ; 
 struct passwd* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct passwd*,char*,int,struct passwd**) ; 
 struct passwd* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,struct passwd*,char*,int,struct passwd**) ; 
 struct passwd* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct passwd*,char*,int,struct passwd**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct passwd* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct passwd*,char*,int,struct passwd**) ; 
 struct passwd* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,struct passwd*,char*,int,struct passwd**) ; 
 struct passwd* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct passwd*,char*,int,struct passwd**) ; 
 scalar_t__ FUNC13 (struct passwd*,struct passwd*) ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static unsigned int
FUNC15(cap_channel_t *cappwd)
{
	char bufs[1024], bufc[1024];
	unsigned int result;
	struct passwd *pwds, *pwdc;
	struct passwd sts, stc;

	result = 0;

	FUNC14();
	FUNC6(cappwd);

	pwds = FUNC7();
	pwdc = FUNC0(cappwd);
	if (FUNC13(pwds, pwdc)) {
		result |= GETPWENT0;
		pwds = FUNC7();
		pwdc = FUNC0(cappwd);
		if (FUNC13(pwds, pwdc))
			result |= GETPWENT1;
	}

	FUNC8(&sts, bufs, sizeof(bufs), &pwds);
	FUNC1(cappwd, &stc, bufc, sizeof(bufc), &pwdc);
	if (FUNC13(pwds, pwdc)) {
		result |= GETPWENT_R0;
		FUNC8(&sts, bufs, sizeof(bufs), &pwds);
		FUNC1(cappwd, &stc, bufc, sizeof(bufc), &pwdc);
		if (FUNC13(pwds, pwdc))
			result |= GETPWENT_R1;
	}

	FUNC14();
	FUNC6(cappwd);

	FUNC8(&sts, bufs, sizeof(bufs), &pwds);
	FUNC1(cappwd, &stc, bufc, sizeof(bufc), &pwdc);
	if (FUNC13(pwds, pwdc))
		result |= GETPWENT_R2;

	pwds = FUNC7();
	pwdc = FUNC0(cappwd);
	if (FUNC13(pwds, pwdc))
		result |= GETPWENT2;

	pwds = FUNC9("root");
	pwdc = FUNC2(cappwd, "root");
	if (FUNC13(pwds, pwdc)) {
		pwds = FUNC9("operator");
		pwdc = FUNC2(cappwd, "operator");
		if (FUNC13(pwds, pwdc))
			result |= GETPWNAM;
	}

	FUNC10("root", &sts, bufs, sizeof(bufs), &pwds);
	FUNC3(cappwd, "root", &stc, bufc, sizeof(bufc), &pwdc);
	if (FUNC13(pwds, pwdc)) {
		FUNC10("operator", &sts, bufs, sizeof(bufs), &pwds);
		FUNC3(cappwd, "operator", &stc, bufc, sizeof(bufc),
		    &pwdc);
		if (FUNC13(pwds, pwdc))
			result |= GETPWNAM_R;
	}

	pwds = FUNC11(UID_ROOT);
	pwdc = FUNC4(cappwd, UID_ROOT);
	if (FUNC13(pwds, pwdc)) {
		pwds = FUNC11(UID_OPERATOR);
		pwdc = FUNC4(cappwd, UID_OPERATOR);
		if (FUNC13(pwds, pwdc))
			result |= GETPWUID;
	}

	FUNC12(UID_ROOT, &sts, bufs, sizeof(bufs), &pwds);
	FUNC5(cappwd, UID_ROOT, &stc, bufc, sizeof(bufc), &pwdc);
	if (FUNC13(pwds, pwdc)) {
		FUNC12(UID_OPERATOR, &sts, bufs, sizeof(bufs), &pwds);
		FUNC5(cappwd, UID_OPERATOR, &stc, bufc, sizeof(bufc),
		    &pwdc);
		if (FUNC13(pwds, pwdc))
			result |= GETPWUID_R;
	}

	return (result);
}