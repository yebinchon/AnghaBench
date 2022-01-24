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
 char INVALID_BYTE ; 
 char TRIM ; 

Char   *
FUNC0(Char *cp)
{
    Char *dp = cp;

    if (!cp)
	return (cp);
    while (*dp != '\0') {
#if INVALID_BYTE != 0
	if ((*dp & INVALID_BYTE) != INVALID_BYTE)    /* *dp < INVALID_BYTE */
#endif
		*dp &= TRIM;
	dp++;
    }
    return (cp);
}