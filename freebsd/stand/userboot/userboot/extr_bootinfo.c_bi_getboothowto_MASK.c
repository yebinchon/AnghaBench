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

/* Variables and functions */
 int RB_MULTIPLE ; 
 int RB_MUTE ; 
 int RB_SERIAL ; 
 int FUNC0 () ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (char**,char*) ; 

int
FUNC7(char *kargs)
{
    char	*curpos, *next, *string;
    int		howto;
    int		vidconsole;

    howto = FUNC1(kargs);
    howto |= FUNC0();

    /* Enable selected consoles */
    string = next = FUNC5(FUNC3("console"));
    vidconsole = 0;
    while (next != NULL) {
	curpos = FUNC6(&next, " ,");
	if (*curpos == '\0')
		continue;
	if (!FUNC4(curpos, "vidconsole"))
	    vidconsole = 1;
	else if (!FUNC4(curpos, "comconsole"))
	    howto |= RB_SERIAL;
	else if (!FUNC4(curpos, "nullconsole"))
	    howto |= RB_MUTE;
    }

    if (vidconsole && (howto & RB_SERIAL))
	howto |= RB_MULTIPLE;

    /*
     * XXX: Note that until the kernel is ready to respect multiple consoles
     * for the messages from /etc/rc, the first named console is the primary
     * console
     */
    if (!FUNC4(string, "vidconsole"))
	howto &= ~RB_SERIAL;

    FUNC2(string);

    return(howto);
}