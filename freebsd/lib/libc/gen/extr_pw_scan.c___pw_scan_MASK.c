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
typedef  void* uid_t ;
struct passwd {char* pw_name; char* pw_shell; int /*<<< orphan*/  pw_fields; scalar_t__* pw_dir; scalar_t__* pw_gecos; void* pw_expire; void* pw_change; scalar_t__* pw_class; void* pw_gid; void* pw_uid; scalar_t__* pw_passwd; } ;

/* Variables and functions */
 scalar_t__ ERANGE ; 
 unsigned long GID_MAX ; 
 unsigned long UID_MAX ; 
 unsigned long ULONG_MAX ; 
 void* USHRT_MAX ; 
 int /*<<< orphan*/  _PWF_CHANGE ; 
 int /*<<< orphan*/  _PWF_CLASS ; 
 int /*<<< orphan*/  _PWF_DIR ; 
 int /*<<< orphan*/  _PWF_EXPIRE ; 
 int /*<<< orphan*/  _PWF_GECOS ; 
 int /*<<< orphan*/  _PWF_GID ; 
 int /*<<< orphan*/  _PWF_NAME ; 
 int /*<<< orphan*/  _PWF_PASSWD ; 
 int /*<<< orphan*/  _PWF_SHELL ; 
 int /*<<< orphan*/  _PWF_UID ; 
 int _PWSCAN_MASTER ; 
 int _PWSCAN_WARN ; 
 void* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 char* FUNC3 () ; 
 int pw_big_ids_warning ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 void* FUNC6 (char**,char*) ; 
 unsigned long FUNC7 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

int
FUNC9(char *bp, struct passwd *pw, int flags)
{
	uid_t id;
	int root;
	char *ep, *p, *sh;
	unsigned long temp;

	if (pw_big_ids_warning == -1)
		pw_big_ids_warning = FUNC2("PW_SCAN_BIG_IDS") == NULL ? 1 : 0;

	pw->pw_fields = 0;
	if (!(pw->pw_name = FUNC6(&bp, ":")))		/* login */
		goto fmt;
	root = !FUNC5(pw->pw_name, "root");
	if (pw->pw_name[0] && (pw->pw_name[0] != '+' || pw->pw_name[1] == '\0'))
		pw->pw_fields |= _PWF_NAME;

	if (!(pw->pw_passwd = FUNC6(&bp, ":")))	/* passwd */
		goto fmt;
	if (pw->pw_passwd[0])
		pw->pw_fields |= _PWF_PASSWD;

	if (!(p = FUNC6(&bp, ":")))			/* uid */
		goto fmt;
	if (p[0])
		pw->pw_fields |= _PWF_UID;
	else {
		if (pw->pw_name[0] != '+' && pw->pw_name[0] != '-') {
			if (flags & _PWSCAN_WARN)
				FUNC8("no uid for user %s", pw->pw_name);
			return (0);
		}
	}
	errno = 0;
	temp = FUNC7(p, &ep, 10);
	if ((temp == ULONG_MAX && errno == ERANGE) || temp > UID_MAX) {
		if (flags & _PWSCAN_WARN)
			FUNC8("%s > max uid value (%u)", p, UID_MAX);
		return (0);
	}
	id = temp;
	if (*ep != '\0') {
		if (flags & _PWSCAN_WARN)
			FUNC8("%s uid is incorrect", p);
		return (0);
	}
	if (root && id) {
		if (flags & _PWSCAN_WARN)
			FUNC8("root uid should be 0");
		return (0);
	}
	if (flags & _PWSCAN_WARN && pw_big_ids_warning && id > USHRT_MAX) {
		FUNC8("%s > recommended max uid value (%u)", p, USHRT_MAX);
		/*return (0);*/ /* THIS SHOULD NOT BE FATAL! */
	}
	pw->pw_uid = id;

	if (!(p = FUNC6(&bp, ":")))			/* gid */
		goto fmt;
	if (p[0])
		pw->pw_fields |= _PWF_GID;
	else {
		if (pw->pw_name[0] != '+' && pw->pw_name[0] != '-') {
			if (flags & _PWSCAN_WARN)
				FUNC8("no gid for user %s", pw->pw_name);
			return (0);
		}
	}
	errno = 0;
	temp = FUNC7(p, &ep, 10);
	if ((temp == ULONG_MAX && errno == ERANGE) || temp > GID_MAX) {
		if (flags & _PWSCAN_WARN)
			FUNC8("%s > max gid value (%u)", p, GID_MAX);
		return (0);
	}
	id = temp;
	if (*ep != '\0') {
		if (flags & _PWSCAN_WARN)
			FUNC8("%s gid is incorrect", p);
		return (0);
	}
	if (flags & _PWSCAN_WARN && pw_big_ids_warning && id > USHRT_MAX) {
		FUNC8("%s > recommended max gid value (%u)", p, USHRT_MAX);
		/* return (0); This should not be fatal! */
	}
	pw->pw_gid = id;

	if (flags & _PWSCAN_MASTER ) {
		if (!(pw->pw_class = FUNC6(&bp, ":")))	/* class */
			goto fmt;
		if (pw->pw_class[0])
			pw->pw_fields |= _PWF_CLASS;
		
		if (!(p = FUNC6(&bp, ":")))		/* change */
			goto fmt;
		if (p[0])
			pw->pw_fields |= _PWF_CHANGE;
		pw->pw_change = FUNC0(p);
		
		if (!(p = FUNC6(&bp, ":")))		/* expire */
			goto fmt;
		if (p[0])
			pw->pw_fields |= _PWF_EXPIRE;
		pw->pw_expire = FUNC0(p);
	}
	if (!(pw->pw_gecos = FUNC6(&bp, ":")))		/* gecos */
		goto fmt;
	if (pw->pw_gecos[0])
		pw->pw_fields |= _PWF_GECOS;

	if (!(pw->pw_dir = FUNC6(&bp, ":")))		/* directory */
		goto fmt;
	if (pw->pw_dir[0])
		pw->pw_fields |= _PWF_DIR;

	if (!(pw->pw_shell = FUNC6(&bp, ":")))		/* shell */
		goto fmt;

	p = pw->pw_shell;
	if (root && *p) {				/* empty == /bin/sh */
		for (FUNC4();;) {
			if (!(sh = FUNC3())) {
				if (flags & _PWSCAN_WARN)
					FUNC8("warning, unknown root shell");
				break;
			}
			if (!FUNC5(p, sh))
				break;
		}
		FUNC1();
	}
	if (p[0])
		pw->pw_fields |= _PWF_SHELL;

	if ((p = FUNC6(&bp, ":"))) {			/* too many */
fmt:		
		if (flags & _PWSCAN_WARN)
			FUNC8("corrupted entry");
		return (0);
	}
	return (1);
}