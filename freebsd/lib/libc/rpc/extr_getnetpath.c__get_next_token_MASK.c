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
 char* FUNC0 (char*,char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

char *
FUNC2(char *npp, int token)
{
    char  *cp;		/* char pointer */
    char  *np;		/* netpath pointer */
    char  *ep;		/* escape pointer */

    if ((cp = FUNC0(npp, token)) == NULL) {
	return (NULL);
    }
    /*
     * did find a token, but it might be escaped.
     */
    if ((cp > npp) && (cp[-1] == '\\')) {
        /* if slash was also escaped, carry on, otherwise find next token */
	if ((cp > npp + 1) && (cp[-2] != '\\')) {
	    /* shift r-o-s  onto the escaped token */
	    FUNC1(&cp[-1], cp);    /* XXX: overlapping string copy */
	    /*
	     * Do a recursive call.
	     * We don't know how many escaped tokens there might be.
	     */
	    return (FUNC2(cp, token));
	}
    }

    *cp++ = '\0';		/* null-terminate token */
    /* get rid of any backslash escapes */
    ep = npp;
    while ((np = FUNC0(ep, '\\')) != NULL) {
	if (np[1] == '\\')
	    np++;
	FUNC1(np, (ep = &np[1]));  /* XXX: overlapping string copy */
    }
    return (cp);		/* return ptr to r-o-s */
}