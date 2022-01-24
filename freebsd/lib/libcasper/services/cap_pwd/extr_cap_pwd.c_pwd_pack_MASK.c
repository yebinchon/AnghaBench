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
typedef  int /*<<< orphan*/  uint64_t ;
struct passwd {char* pw_name; int pw_fields; char* pw_passwd; char* pw_class; char* pw_gecos; char* pw_dir; char* pw_shell; scalar_t__ pw_expire; scalar_t__ pw_change; scalar_t__ pw_gid; scalar_t__ pw_uid; } ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int _PWF_CHANGE ; 
 int _PWF_CLASS ; 
 int _PWF_DIR ; 
 int _PWF_EXPIRE ; 
 int _PWF_GECOS ; 
 int _PWF_GID ; 
 int _PWF_NAME ; 
 int _PWF_PASSWD ; 
 int _PWF_SHELL ; 
 int _PWF_UID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,char*,scalar_t__) ; 

__attribute__((used)) static bool
FUNC4(const nvlist_t *limits, const struct passwd *pwd, nvlist_t *nvl)
{
	int fields;

	if (pwd == NULL)
		return (true);

	/*
	 * If either name or UID is allowed, we allow it.
	 */
	if (!FUNC3(limits, pwd->pw_name, pwd->pw_uid))
		return (false);

	fields = pwd->pw_fields;

	if (FUNC2(limits, "pw_name")) {
		FUNC1(nvl, "pw_name", pwd->pw_name);
	} else {
		FUNC1(nvl, "pw_name", "");
		fields &= ~_PWF_NAME;
	}
	if (FUNC2(limits, "pw_uid")) {
		FUNC0(nvl, "pw_uid", (uint64_t)pwd->pw_uid);
	} else {
		FUNC0(nvl, "pw_uid", (uint64_t)-1);
		fields &= ~_PWF_UID;
	}
	if (FUNC2(limits, "pw_gid")) {
		FUNC0(nvl, "pw_gid", (uint64_t)pwd->pw_gid);
	} else {
		FUNC0(nvl, "pw_gid", (uint64_t)-1);
		fields &= ~_PWF_GID;
	}
	if (FUNC2(limits, "pw_change")) {
		FUNC0(nvl, "pw_change", (uint64_t)pwd->pw_change);
	} else {
		FUNC0(nvl, "pw_change", (uint64_t)0);
		fields &= ~_PWF_CHANGE;
	}
	if (FUNC2(limits, "pw_passwd")) {
		FUNC1(nvl, "pw_passwd", pwd->pw_passwd);
	} else {
		FUNC1(nvl, "pw_passwd", "");
		fields &= ~_PWF_PASSWD;
	}
	if (FUNC2(limits, "pw_class")) {
		FUNC1(nvl, "pw_class", pwd->pw_class);
	} else {
		FUNC1(nvl, "pw_class", "");
		fields &= ~_PWF_CLASS;
	}
	if (FUNC2(limits, "pw_gecos")) {
		FUNC1(nvl, "pw_gecos", pwd->pw_gecos);
	} else {
		FUNC1(nvl, "pw_gecos", "");
		fields &= ~_PWF_GECOS;
	}
	if (FUNC2(limits, "pw_dir")) {
		FUNC1(nvl, "pw_dir", pwd->pw_dir);
	} else {
		FUNC1(nvl, "pw_dir", "");
		fields &= ~_PWF_DIR;
	}
	if (FUNC2(limits, "pw_shell")) {
		FUNC1(nvl, "pw_shell", pwd->pw_shell);
	} else {
		FUNC1(nvl, "pw_shell", "");
		fields &= ~_PWF_SHELL;
	}
	if (FUNC2(limits, "pw_expire")) {
		FUNC0(nvl, "pw_expire", (uint64_t)pwd->pw_expire);
	} else {
		FUNC0(nvl, "pw_expire", (uint64_t)0);
		fields &= ~_PWF_EXPIRE;
	}
	FUNC0(nvl, "pw_fields", (uint64_t)fields);

	return (true);
}