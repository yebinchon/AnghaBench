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
struct passwd {int /*<<< orphan*/  pw_gid; int /*<<< orphan*/  pw_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*) ; 
 struct passwd* FUNC4 (char const*) ; 

__attribute__((used)) static int
FUNC5(const char *grps, int line, const char *user)
{
	int result = 0;
	struct passwd *pw;

	if (user == NULL)
		goto out;

	if ((pw = FUNC4(user)) == NULL) {
		FUNC0("Can't match group at line %d because user %.100s does "
		    "not exist", line, user);
	} else if (FUNC2(pw->pw_name, pw->pw_gid) == 0) {
		FUNC0("Can't Match group because user %.100s not in any group "
		    "at line %d", user, line);
	} else if (FUNC3(grps) != 1) {
		FUNC0("user %.100s does not match group list %.100s at line %d",
		    user, grps, line);
	} else {
		FUNC0("user %.100s matched group list %.100s at line %d", user,
		    grps, line);
		result = 1;
	}
out:
	FUNC1();
	return result;
}