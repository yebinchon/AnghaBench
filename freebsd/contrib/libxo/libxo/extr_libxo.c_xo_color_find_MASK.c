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
 scalar_t__* xo_color_names ; 
 scalar_t__ FUNC0 (scalar_t__,char const*) ; 

__attribute__((used)) static int
FUNC1 (const char *str)
{
    int i;

    for (i = 0; xo_color_names[i]; i++) {
	if (FUNC0(xo_color_names[i], str))
	    return i;
    }

    return -1;
}