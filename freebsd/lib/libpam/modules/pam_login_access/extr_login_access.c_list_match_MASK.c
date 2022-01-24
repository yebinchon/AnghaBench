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
 int NO ; 
 int /*<<< orphan*/  sep ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,char const*) ; 

__attribute__((used)) static int
FUNC3(char *list, const char *item,
    int (*match_fn)(const char *, const char *))
{
    char   *tok;
    int     match = NO;

    /*
     * Process tokens one at a time. We have exhausted all possible matches
     * when we reach an "EXCEPT" token or the end of the list. If we do find
     * a match, look for an "EXCEPT" list and recurse to determine whether
     * the match is affected by any exceptions.
     */

    for (tok = FUNC1(list, sep); tok != NULL; tok = FUNC1((char *) 0, sep)) {
	if (FUNC0(tok, "EXCEPT") == 0)	/* EXCEPT: give up */
	    break;
	if ((match = (*match_fn)(tok, item)) != 0)	/* YES */
	    break;
    }
    /* Process exceptions to matches. */

    if (match != NO) {
	while ((tok = FUNC1((char *) 0, sep)) && FUNC0(tok, "EXCEPT"))
	     /* VOID */ ;
	if (tok == NULL || FUNC3((char *) 0, item, match_fn) == NO)
	    return (match);
    }
    return (NO);
}