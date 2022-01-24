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
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFSIZ ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int NO ; 
 int /*<<< orphan*/  _PATH_LOGACCESS ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  from_match ; 
 int /*<<< orphan*/  fs ; 
 scalar_t__ FUNC3 (char) ; 
 scalar_t__ FUNC4 (char*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*) ; 
 char* FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  user_match ; 

int
FUNC8(const char *user, const char *from)
{
    FILE   *fp;
    char    line[BUFSIZ];
    char   *perm;			/* becomes permission field */
    char   *users;			/* becomes list of login names */
    char   *froms;			/* becomes list of terminals or hosts */
    int     match = NO;
    int     end;
    int     lineno = 0;			/* for diagnostics */

    /*
     * Process the table one line at a time and stop at the first match.
     * Blank lines and lines that begin with a '#' character are ignored.
     * Non-comment lines are broken at the ':' character. All fields are
     * mandatory. The first field should be a "+" or "-" character. A
     * non-existing table means no access control.
     */

    if ((fp = FUNC2(_PATH_LOGACCESS, "r")) != NULL) {
	while (!match && FUNC1(line, sizeof(line), fp)) {
	    lineno++;
	    if (line[end = FUNC5(line) - 1] != '\n') {
		FUNC7(LOG_ERR, "%s: line %d: missing newline or line too long",
		       _PATH_LOGACCESS, lineno);
		continue;
	    }
	    if (line[0] == '#')
		continue;			/* comment line */
	    while (end > 0 && FUNC3(line[end - 1]))
		end--;
	    line[end] = 0;			/* strip trailing whitespace */
	    if (line[0] == 0)			/* skip blank lines */
		continue;
	    if (!(perm = FUNC6(line, fs))
		|| !(users = FUNC6((char *) 0, fs))
		|| !(froms = FUNC6((char *) 0, fs))
		|| FUNC6((char *) 0, fs)) {
		FUNC7(LOG_ERR, "%s: line %d: bad field count", _PATH_LOGACCESS,
		       lineno);
		continue;
	    }
	    if (perm[0] != '+' && perm[0] != '-') {
		FUNC7(LOG_ERR, "%s: line %d: bad first field", _PATH_LOGACCESS,
		       lineno);
		continue;
	    }
	    match = (FUNC4(froms, from, from_match)
		     && FUNC4(users, user, user_match));
	}
	(void) FUNC0(fp);
    } else if (errno != ENOENT) {
	FUNC7(LOG_ERR, "cannot open %s: %m", _PATH_LOGACCESS);
    }
    return (match == 0 || (line[0] == '+'));
}