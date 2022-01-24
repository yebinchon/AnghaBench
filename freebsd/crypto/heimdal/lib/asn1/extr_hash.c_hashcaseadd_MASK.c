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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (unsigned char) ; 

unsigned
FUNC2(const char *s)
{				/* Standard hash function */
    unsigned i;

    FUNC0(s);

    for (i = 0; *s; ++s)
	i += FUNC1((unsigned char)*s);
    return i;
}