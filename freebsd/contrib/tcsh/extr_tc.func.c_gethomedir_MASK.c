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
typedef  char Char ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char** FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 char* FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 struct passwd* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Char *
FUNC10(const Char *us)
{
    struct passwd *pp;
#ifdef HESIOD
    char **res, **res1, *cp;
    Char *rp;
#endif /* HESIOD */
    
    pp = FUNC9(FUNC4(us));
#ifdef YPBUGS
    fix_yp_bugs();
#endif /* YPBUGS */
    if (pp != NULL) {
#if 0
	/* Don't return if root */
	if (pp->pw_dir[0] == '/' && pp->pw_dir[1] == '\0')
	    return NULL;
	else
#endif
	    return FUNC0(FUNC5(pp->pw_dir));
    }
#ifdef HESIOD
    res = hes_resolve(short2str(us), "filsys");
    rp = NULL;
    if (res != NULL) {
	if ((*res) != NULL) {
	    /*
	     * Look at the first token to determine how to interpret
	     * the rest of it.
	     * Yes, strtok is evil (it's not thread-safe), but it's also
	     * easy to use.
	     */
	    cp = strtok(*res, " ");
	    if (strcmp(cp, "AFS") == 0) {
		/* next token is AFS pathname.. */
		cp = strtok(NULL, " ");
		if (cp != NULL)
		    rp = Strsave(str2short(cp));
	    } else if (strcmp(cp, "NFS") == 0) {
		cp = NULL;
		if ((strtok(NULL, " ")) && /* skip remote pathname */
		    (strtok(NULL, " ")) && /* skip host */
		    (strtok(NULL, " ")) && /* skip mode */
		    (cp = strtok(NULL, " "))) {
		    rp = Strsave(str2short(cp));
		}
	    }
	}
	for (res1 = res; *res1; res1++)
	    free(*res1);
#if 0
	/* Don't return if root */
	if (rp != NULL && rp[0] == '/' && rp[1] == '\0') {
	    xfree(rp);
	    rp = NULL;
	}
#endif
	return rp;
    }
#endif /* HESIOD */
    return NULL;
}