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
 scalar_t__ FUNC0 (char) ; 

int
FUNC1(Char *cp)
{
    if (!cp)
	return (0);
    if (*cp == '-') {
	cp++;
	if (!FUNC0(*cp))
	    return (0);
	cp++;
    }
    while (*cp && FUNC0(*cp))
	cp++;
    return (*cp == 0);
}