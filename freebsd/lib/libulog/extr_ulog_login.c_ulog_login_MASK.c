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
struct utmpx {int /*<<< orphan*/  ut_host; int /*<<< orphan*/  ut_user; int /*<<< orphan*/  ut_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  USER_PROCESS ; 
 int /*<<< orphan*/  FUNC0 (struct utmpx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct utmpx*,char const*) ; 

void
FUNC3(const char *line, const char *user, const char *host)
{
	struct utmpx utx;

	FUNC2(&utx, line);
	utx.ut_type = USER_PROCESS;
	FUNC1(utx.ut_user, user, sizeof utx.ut_user);
	if (host != NULL)
		FUNC1(utx.ut_host, host, sizeof utx.ut_host);
	FUNC0(&utx);
}