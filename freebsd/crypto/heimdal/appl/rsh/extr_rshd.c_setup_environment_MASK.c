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
struct passwd {int /*<<< orphan*/  pw_shell; int /*<<< orphan*/  pw_dir; int /*<<< orphan*/  pw_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  _PATH_DEFPATH ; 
 int /*<<< orphan*/  _PATH_ETC_ENVIRONMENT ; 
 int FUNC0 (char**,char*,...) ; 
 scalar_t__ do_unique_tkfile ; 
 int FUNC1 (int /*<<< orphan*/ ,char***) ; 
 char** FUNC2 (char**,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  tkfile ; 

__attribute__((used)) static void
FUNC5 (char ***env, const struct passwd *pwd)
{
    int i, j, path;
    char **e;

    i = 0;
    path = 0;
    *env = NULL;

    i = FUNC1(_PATH_ETC_ENVIRONMENT, env);
    e = *env;
    for (j = 0; j < i; j++) {
	if (!FUNC3(e[j], "PATH=", 5)) {
	    path = 1;
	}
    }

    e = *env;
    e = FUNC2(e, (i + 7) * sizeof(char *));

    if (FUNC0 (&e[i++], "USER=%d",  pwd->pw_name) == -1)
	FUNC4 ("asprintf: out of memory");
    if (FUNC0 (&e[i++], "HOME=%d",  pwd->pw_dir) == -1)
	FUNC4 ("asprintf: out of memory");
    if (FUNC0 (&e[i++], "SHELL=%d", pwd->pw_shell) == -1)
	FUNC4 ("asprintf: out of memory");
    if (! path) {
	if (FUNC0 (&e[i++], "PATH=%d",  _PATH_DEFPATH) == -1)
	    FUNC4 ("asprintf: out of memory");
    }
    FUNC0 (&e[i++], "SSH_CLIENT=only_to_make_bash_happy");
    if (do_unique_tkfile)
	if (FUNC0 (&e[i++], "KRB5CCNAME=%d", tkfile) == -1)
	    FUNC4 ("asprintf: out of memory");
    e[i++] = NULL;
    *env = e;
}