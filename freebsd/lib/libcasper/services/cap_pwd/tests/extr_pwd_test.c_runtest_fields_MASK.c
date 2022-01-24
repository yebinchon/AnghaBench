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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  UID_ROOT ; 
 struct passwd* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct passwd*,char*,int,struct passwd**) ; 
 struct passwd* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,struct passwd*,char*,int,struct passwd**) ; 
 struct passwd* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct passwd*,char*,int,struct passwd**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC7 (struct passwd*) ; 

__attribute__((used)) static bool
FUNC8(cap_channel_t *cappwd, unsigned int expected)
{
	char buf[1024];
	struct passwd *pwd;
	struct passwd st;

//printf("expected=0x%x\n", expected);
	FUNC6(cappwd);
	pwd = FUNC0(cappwd);
	if ((FUNC7(pwd) & ~expected) != 0)
		return (false);

	FUNC6(cappwd);
	FUNC1(cappwd, &st, buf, sizeof(buf), &pwd);
	if ((FUNC7(pwd) & ~expected) != 0)
		return (false);

	pwd = FUNC2(cappwd, "root");
	if ((FUNC7(pwd) & ~expected) != 0)
		return (false);

	FUNC3(cappwd, "root", &st, buf, sizeof(buf), &pwd);
	if ((FUNC7(pwd) & ~expected) != 0)
		return (false);

	pwd = FUNC4(cappwd, UID_ROOT);
	if ((FUNC7(pwd) & ~expected) != 0)
		return (false);

	FUNC5(cappwd, UID_ROOT, &st, buf, sizeof(buf), &pwd);
	if ((FUNC7(pwd) & ~expected) != 0)
		return (false);

	return (true);
}