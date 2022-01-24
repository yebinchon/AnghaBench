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
typedef  int /*<<< orphan*/  uid_t ;
struct passwd {int /*<<< orphan*/  pw_uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_NOUSER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 struct passwd* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char) ; 

uid_t
FUNC4(char *s)
{
	struct passwd *pw;
	char *uname;
	uid_t uid;

	if ((pw = FUNC2(s)) != NULL)
		uid = pw->pw_uid;
	else {
		for (uname = s; *s && FUNC3(*s); ++s);
		if (!*s)
			uid = FUNC0(uname);
		else
			FUNC1(EX_NOUSER, "unknown user id: %s", uname);
	}
	return (uid);
}