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
struct command {int dummy; } ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int /*<<< orphan*/  STR0 ; 
 int /*<<< orphan*/  STR1 ; 
 int /*<<< orphan*/  STRstatus ; 
 int /*<<< orphan*/  FUNC0 (struct command*) ; 
 int /*<<< orphan*/  VAR_READWRITE ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

void
FUNC6(Char **v, struct command *c)
{
    char *termtype;
    /*
     * Maximum size of a termcap record. We make it twice as large.
     */
    char termcap_buffer[2048];

    FUNC0(c);
    /* try to find which entry we should be looking for */
    termtype = (v[1] == NULL ? FUNC1("TERM") : FUNC3(v[1]));
    if (termtype == NULL) {
	/* no luck - the user didn't provide one and none is 
	 * specified in the environment
	 */
	FUNC2(STRstatus, STR1, VAR_READWRITE);
	return;
    }

    /*
     * we use the termcap function - if we are using terminfo we 
     * will end up with it's compatibility function
     * terminfo/termcap will be initialized with the new
     * type but we don't care because tcsh has cached all the things
     * it needs.
     */
    if (FUNC4(termcap_buffer, termtype) == 1) {
	FUNC5("%s\n", termtype);
	FUNC2(STRstatus, STR0, VAR_READWRITE);
    } else
	FUNC2(STRstatus, STR1, VAR_READWRITE);
}