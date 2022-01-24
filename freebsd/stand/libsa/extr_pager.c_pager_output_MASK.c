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
 int FUNC0 () ; 
 scalar_t__ p_freelines ; 
 scalar_t__ p_maxlines ; 
 char* pager_blank ; 
 char* pager_prompt1 ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const) ; 

int
FUNC3(const char *cp)
{
    int		action;

    if (cp == NULL)
	return(0);
    
    for (;;) {
	if (*cp == 0)
	    return(0);
	
	FUNC2(*cp);			/* always emit character */

	if (*(cp++) == '\n') {		/* got a newline? */
	    p_freelines--;
	    if (p_freelines <= 0) {
		FUNC1("%s", pager_prompt1);
		action = 0;
		while (action == 0) {
		    switch(FUNC0()) {
		    case '\r':
		    case '\n':
			p_freelines = 1;
			action = 1;
			break;
		    case ' ':
			p_freelines = p_maxlines;
			action = 1;
			break;
		    case 'q':
		    case 'Q':
			action = 2;
			break;
		    default:
			break;
		    }
		}
		FUNC1("\r%s\r", pager_blank);
		if (action == 2)
		    return(1);
	    }
	}
    }
}