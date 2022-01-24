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
struct passwd {int /*<<< orphan*/  pw_uid; int /*<<< orphan*/  pw_gid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHROOT_DIR ; 
 int /*<<< orphan*/  NOPRIV_USER ; 
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct passwd* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

int
FUNC7(void)
{
	struct passwd *pw;

	pw = FUNC2(NOPRIV_USER);
	if (pw == NULL)
		return (0);

	FUNC6();
	if (FUNC1(CHROOT_DIR) != 0 || FUNC0("/") != 0 ||
	    FUNC3(1, &pw->pw_gid) != 0 ||
	    FUNC4(pw->pw_gid, pw->pw_gid, pw->pw_gid) != 0 ||
	    FUNC5(pw->pw_uid, pw->pw_uid, pw->pw_uid) != 0)
		return (0);

	return (1);
}