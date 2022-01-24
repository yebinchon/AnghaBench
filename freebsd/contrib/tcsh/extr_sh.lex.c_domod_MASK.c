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
typedef  int Char ;

/* Variables and functions */
 int* FUNC0 (int*,int) ; 
 int QUOTE ; 
 int* STRNULL ; 
 int* STRQNULL ; 
 int* FUNC1 (int*) ; 
 int* FUNC2 (int*,int) ; 
 int* FUNC3 (int*,char) ; 
 int* FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 

Char   *
FUNC7(Char *cp, Char type)
{
    Char *wp, *xp;
    int c;

    switch (type) {

    case 'q':
    case 'x':
	if (*cp == '\0')
	    return FUNC4(STRQNULL);
	wp = FUNC4(cp);
	for (xp = wp; (c = *xp) != 0; xp++)
	    if ((c != ' ' && c != '\t') || type == 'q')
		*xp |= QUOTE;
	return (wp);

    case 'l':
	wp = FUNC0(cp, 1);
	return wp ? wp : FUNC4(cp);

    case 'u':
	wp = FUNC0(cp, 0);
	return wp ? wp : FUNC4(cp);

    case 'h':
    case 't':
	if (!FUNC5(FUNC6(cp), '/'))
	    return (type == 't' ? FUNC4(cp) : 0);
	wp = FUNC3(cp, '/');
	if (type == 'h')
	    xp = FUNC2(cp, wp - cp);
	else
	    xp = FUNC4(wp + 1);
	return (xp);

    case 'e':
    case 'r':
	wp = FUNC1(cp);
	for (wp--; wp >= cp && *wp != '/'; wp--)
	    if (*wp == '.') {
		if (type == 'e')
		    xp = FUNC4(wp + 1);
		else
		    xp = FUNC2(cp, wp - cp);
		return (xp);
	    }
	return (FUNC4(type == 'e' ? STRNULL : cp));
    default:
	break;
    }
    return (0);
}