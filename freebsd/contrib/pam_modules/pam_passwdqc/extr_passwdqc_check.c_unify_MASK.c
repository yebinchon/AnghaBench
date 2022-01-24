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
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 char* FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static char *FUNC5(const char *src)
{
	const char *sptr;
	char *dst, *dptr;
	int c;

	if (!(dst = FUNC2(FUNC3(src) + 1)))
		return NULL;

	sptr = src;
	dptr = dst;
	do {
		c = (unsigned char)*sptr;
		if (FUNC0(c) && FUNC1(c))
			*dptr++ = FUNC4(c);
		else
			*dptr++ = *sptr;
	} while (*sptr++);

	return dst;
}