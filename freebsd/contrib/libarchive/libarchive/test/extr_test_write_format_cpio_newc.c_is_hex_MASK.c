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

__attribute__((used)) static int
FUNC0(const char *p, size_t l)
{
	while (l > 0) {
		if (*p >= '0' && *p <= '9') {
			/* Ascii digit */
		} else if (*p >= 'a' && *p <= 'f') {
			/* lowercase letter a-f */
		} else {
			/* Not hex. */
			return (0);
		}
		--l;
		++p;
	}
	return (1);
}