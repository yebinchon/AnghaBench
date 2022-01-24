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
struct passwd {int pw_uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_NOUSER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 struct passwd* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char**,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void
FUNC6(const char *s, char *buf, size_t bufsize)
{
	struct passwd  *pw;
	char *inval;

	if ((pw = FUNC1(s)) != NULL)
		FUNC2(buf, bufsize, "%d", pw->pw_uid);
	else {
		FUNC4(s, &inval, 10);
		if (*inval != 0) {
                       FUNC0(EX_NOUSER, "unknown user id: %s", s);
                       FUNC5();
		} else {
			FUNC3(buf, s, bufsize);
		}
	}
}