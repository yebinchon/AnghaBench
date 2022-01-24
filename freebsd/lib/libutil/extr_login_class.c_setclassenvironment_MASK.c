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
struct passwd {char* pw_dir; char* pw_name; } ;
struct login_vars {char const* var; int overwrite; char* def; int /*<<< orphan*/ * tag; } ;
typedef  int /*<<< orphan*/  login_cap_t ;

/* Variables and functions */
 struct login_vars* envars ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char** FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct login_vars* pathvars ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*,int) ; 
 char* FUNC5 (char const*,char) ; 
 int FUNC6 (char*) ; 
 char* FUNC7 (char const*,struct passwd const*,int,char,int) ; 

void
FUNC8(login_cap_t *lc, const struct passwd * pwd, int paths)
{
    struct login_vars	*vars = paths ? pathvars : envars;
    int			hlen = pwd ? FUNC6(pwd->pw_dir) : 0;
    int			nlen = pwd ? FUNC6(pwd->pw_name) : 0;
    char pch = 0;

    if (hlen && pwd->pw_dir[hlen-1] != '/')
	++pch;

    while (vars->tag != NULL) {
	const char * var = paths ? FUNC3(lc, vars->tag, NULL)
				 : FUNC2(lc, vars->tag, NULL, NULL);

	char * np  = FUNC7(var, pwd, hlen, pch, nlen);

	if (np != NULL) {
	    FUNC4(vars->var, np, vars->overwrite);
	    FUNC0(np);
	} else if (vars->def != NULL) {
	    FUNC4(vars->var, vars->def, 0);
	}
	++vars;
    }

    /*
     * If we're not processing paths, then see if there is a setenv list by
     * which the admin and/or user may set an arbitrary set of env vars.
     */
    if (!paths) {
	const char	**set_env = FUNC1(lc, "setenv", ",");

	if (set_env != NULL) {
	    while (*set_env != NULL) {
		char	*p = FUNC5(*set_env, '=');

		if (p != NULL) {  /* Discard invalid entries */
		    char	*np;

		    *p++ = '\0';
		    if ((np = FUNC7(p, pwd, hlen, pch, nlen)) != NULL) {
			FUNC4(*set_env, np, 1);
			FUNC0(np);
		    }
		}
		++set_env;
	    }
	}
    }
}