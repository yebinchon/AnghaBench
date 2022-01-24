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
struct stat {int dummy; } ;
struct passwd {scalar_t__ pw_uid; int /*<<< orphan*/  pw_name; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* _PATH_NOLOGIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lc ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,char const*) ; 
 int FUNC8 (char const*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC9(struct passwd *pw)
{
	FILE *f = NULL;
	const char *nl;
	char buf[1024], *def_nl = _PATH_NOLOGIN;
	struct stat sb;

#ifdef HAVE_LOGIN_CAP
	if (login_getcapbool(lc, "ignorenologin", 0) || pw->pw_uid == 0)
		return;
	nl = login_getcapstr(lc, "nologin", def_nl, def_nl);
#else
	if (pw->pw_uid == 0)
		return;
	nl = def_nl;
#endif
	if (FUNC8(nl, &sb) == -1)
		return;

	/* /etc/nologin exists.  Print its contents if we can and exit. */
	FUNC7("User %.100s not allowed because %s exists", pw->pw_name, nl);
	if ((f = FUNC3(nl, "r")) != NULL) {
		while (FUNC2(buf, sizeof(buf), f))
			FUNC4(buf, stderr);
		FUNC1(f);
	}
	FUNC0(254);
}