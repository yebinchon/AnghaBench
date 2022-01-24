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
typedef  char Char ;

/* Variables and functions */
 char* STRNULL ; 
 int /*<<< orphan*/  STRhome ; 
 char* FUNC0 (char*) ; 
 char* FUNC1 (char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 

Char *
FUNC3(const Char *home)
{
    Char   *h;

    /*
     * Is it us?
     */
    if (*home == '\0') {
	if ((h = FUNC2(STRhome)) != STRNULL)
	    return FUNC0(h);
	else
	    return NULL;
    }

    /*
     * Look in the cache
     */
    if ((h = FUNC1(home)) == NULL)
	return NULL;
    else
	return FUNC0(h);
}