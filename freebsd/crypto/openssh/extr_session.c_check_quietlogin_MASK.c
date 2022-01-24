#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stat {int dummy; } ;
struct passwd {char* pw_dir; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_3__ {struct passwd* pw; } ;
typedef  TYPE_1__ Session ;

/* Variables and functions */
 int /*<<< orphan*/  lc ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*) ; 
 scalar_t__ FUNC2 (char*,struct stat*) ; 

int
FUNC3(Session *s, const char *command)
{
	char buf[256];
	struct passwd *pw = s->pw;
	struct stat st;

	/* Return 1 if .hushlogin exists or a command given. */
	if (command != NULL)
		return 1;
	FUNC1(buf, sizeof(buf), "%.200s/.hushlogin", pw->pw_dir);
#ifdef HAVE_LOGIN_CAP
	if (login_getcapbool(lc, "hushlogin", 0) || stat(buf, &st) >= 0)
		return 1;
#else
	if (FUNC2(buf, &st) >= 0)
		return 1;
#endif
	return 0;
}