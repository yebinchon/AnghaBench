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
 scalar_t__ FUNC0 (char const) ; 

__attribute__((used)) static unsigned long
FUNC1(const char *value)
{
    unsigned long result = 0;

    if ((intptr_t) value == (intptr_t) (-1)) {
	result = ~result;
    } else if (value) {
	while (*value) {
	    result += FUNC0(*value);
	    ++value;
	}
    }
    return result;
}