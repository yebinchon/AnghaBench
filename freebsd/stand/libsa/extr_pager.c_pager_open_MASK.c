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
 char* FUNC0 (char*) ; 
 int p_freelines ; 
 int p_maxlines ; 
 int FUNC1 (char*,char**,int /*<<< orphan*/ ) ; 

void
FUNC2(void)
{
    int		nlines;
    char	*cp, *lp;
    
    nlines = 24;		/* sensible default */
    if ((cp = FUNC0("LINES")) != NULL) {
	nlines = FUNC1(cp, &lp, 0);
    }

    p_maxlines = nlines - 1;
    if (p_maxlines < 1)
	p_maxlines = 1;
    p_freelines = p_maxlines;
}