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
struct tm {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; int member_8; int member_9; int /*<<< orphan*/ * member_10; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char const*,struct tm*) ; 

__attribute__((used)) static void
FUNC3(const char *buf, const char *fmt)
{
	struct tm tm = { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, NULL };

#ifdef __FreeBSD__
	ATF_CHECK_MSG(strptime(buf, fmt, &tm) == NULL, "strptime(\"%s\", "
	    "\"%s\", &tm) should fail, but it didn't", buf, fmt);
#else
	FUNC1(FUNC2(buf, fmt, &tm) == NULL, "strptime(\"%s\", "
	    "\"%s\", &tm) should fail, but it didn't", buf, fmt);
#endif
}