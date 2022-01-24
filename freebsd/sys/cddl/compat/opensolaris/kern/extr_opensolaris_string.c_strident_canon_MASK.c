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
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 

void
FUNC2(char *s, size_t n)
{
	char c;
	char *end = s + n - 1;

	if ((c = *s) == 0)
		return;

	if (!FUNC0(c) && c != '_')
		*s = '_';

	while (s < end && ((c = *(++s)) != 0)) {
		if (!FUNC0(c) && !FUNC1(c) && c != '_')
			*s = '_';
	}
	*s = 0;
}