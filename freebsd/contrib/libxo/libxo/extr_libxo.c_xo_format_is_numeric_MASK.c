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
typedef  int ssize_t ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/ * FUNC0 (char*,char const) ; 
 int FUNC1 (char const*,int,char*) ; 

__attribute__((used)) static int
FUNC2 (const char *fmt, ssize_t flen)
{
    if (flen <= 0 || *fmt++ != '%') /* Must start with '%' */
	return FALSE;
    flen -= 1;

    /* Handle leading flags; don't want "#" since JSON can't handle hex */
    ssize_t spn = FUNC1(fmt, flen, "0123456789.*+ -");
    if (spn >= flen)
	return FALSE;

    fmt += spn;			/* Move along the input string */
    flen -= spn;

    /* Handle the length modifiers */
    spn = FUNC1(fmt, flen, "hljtqz");
    if (spn >= flen)
	return FALSE;

    fmt += spn;			/* Move along the input string */
    flen -= spn;

    if (flen != 1)		/* Should only be one character left */
	return FALSE;

    return (FUNC0("diouDOUeEfFgG", *fmt) == NULL) ? FALSE : TRUE;
}