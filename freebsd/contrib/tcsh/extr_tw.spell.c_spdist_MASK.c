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
 scalar_t__ FUNC0 (char const*,char const*) ; 
 char const TRIM ; 

int
FUNC1(const Char *s, const Char *t)
{
    for (; (*s & TRIM) == (*t & TRIM); t++, s++)
	if (*t == '\0')
	    return 0;		/* exact match */
    if (*s) {
	if (*t) {
	    if (s[1] && t[1] && (*s & TRIM) == (t[1] & TRIM) &&
		(*t & TRIM) == (s[1] & TRIM) && FUNC0(s + 2, t + 2))
		return 1;	/* transposition */
	    if (FUNC0(s + 1, t + 1))
		return 3;	/* 1 char mismatch */
	}
	if (FUNC0(s + 1, t))
	    return 2;		/* extra character */
    }
    if (*t && FUNC0(s, t + 1))
	return 1;		/* missing character */
    return 4;
}