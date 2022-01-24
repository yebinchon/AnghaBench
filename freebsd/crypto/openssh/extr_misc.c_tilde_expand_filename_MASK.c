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
typedef  int /*<<< orphan*/  user ;
typedef  scalar_t__ uid_t ;
typedef  int u_int ;
struct passwd {char* pw_dir; } ;

/* Variables and functions */
 scalar_t__ PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 struct passwd* FUNC1 (char*) ; 
 struct passwd* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 char* FUNC4 (char const*,char) ; 
 int FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char**,char*,char*,char const*,char const*) ; 
 char* FUNC7 (char const*) ; 

char *
FUNC8(const char *filename, uid_t uid)
{
	const char *path, *sep;
	char user[128], *ret;
	struct passwd *pw;
	u_int len, slash;

	if (*filename != '~')
		return (FUNC7(filename));
	filename++;

	path = FUNC4(filename, '/');
	if (path != NULL && path > filename) {		/* ~user/path */
		slash = path - filename;
		if (slash > sizeof(user) - 1)
			FUNC0("tilde_expand_filename: ~username too long");
		FUNC3(user, filename, slash);
		user[slash] = '\0';
		if ((pw = FUNC1(user)) == NULL)
			FUNC0("tilde_expand_filename: No such user %s", user);
	} else if ((pw = FUNC2(uid)) == NULL)	/* ~/path */
		FUNC0("tilde_expand_filename: No such uid %ld", (long)uid);

	/* Make sure directory has a trailing '/' */
	len = FUNC5(pw->pw_dir);
	if (len == 0 || pw->pw_dir[len - 1] != '/')
		sep = "/";
	else
		sep = "";

	/* Skip leading '/' from specified path */
	if (path != NULL)
		filename = path + 1;

	if (FUNC6(&ret, "%s%s%s", pw->pw_dir, sep, filename) >= PATH_MAX)
		FUNC0("tilde_expand_filename: Path too long");

	return (ret);
}