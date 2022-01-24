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
struct passwd {char* pw_dir; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int PATH_MAX ; 
 int SSHCONF_CHECKPERM ; 
 int SSHCONF_POSTCANON ; 
 int SSHCONF_USERCONF ; 
 char* _PATH_HOST_CONFIG_FILE ; 
 char* _PATH_SSH_USER_CONFFILE ; 
 char* config ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  host ; 
 int /*<<< orphan*/  options ; 
 int /*<<< orphan*/  FUNC1 (char*,struct passwd*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (char*,int,char*,char*,char*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(const char *host_name, struct passwd *pw, int post_canon)
{
	char buf[PATH_MAX];
	int r;

	if (config != NULL) {
		if (FUNC3(config, "none") != 0 &&
		    !FUNC1(config, pw, host, host_name, &options,
		    SSHCONF_USERCONF | (post_canon ? SSHCONF_POSTCANON : 0)))
			FUNC0("Can't open user config file %.100s: "
			    "%.100s", config, FUNC4(errno));
	} else {
		r = FUNC2(buf, sizeof buf, "%s/%s", pw->pw_dir,
		    _PATH_SSH_USER_CONFFILE);
		if (r > 0 && (size_t)r < sizeof(buf))
			(void)FUNC1(buf, pw, host, host_name,
			    &options, SSHCONF_CHECKPERM | SSHCONF_USERCONF |
			    (post_canon ? SSHCONF_POSTCANON : 0));

		/* Read systemwide configuration file after user config. */
		(void)FUNC1(_PATH_HOST_CONFIG_FILE, pw,
		    host, host_name, &options,
		    post_canon ? SSHCONF_POSTCANON : 0);
	}
}