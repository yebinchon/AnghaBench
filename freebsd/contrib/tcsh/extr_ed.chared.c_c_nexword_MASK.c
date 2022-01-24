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
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Char *
FUNC1(Char *p, Char *high, int n)
{
    while (n--) {
	while ((p < high) && !FUNC0(*p)) 
	    p++;
	while ((p < high) && FUNC0(*p)) 
	    p++;
    }

    if (p > high)
	p = high;
    /* p now points where we want it */
    return(p);
}