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
 size_t FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*,size_t) ; 

unsigned int
FUNC2(const char *source, const char *find)
{
	const char *p = source;
	size_t flen;
	unsigned int n = 0;

	/* Both parameters are required */
	if (source == NULL || find == NULL)
		return (0);

	/* Cache the length of find element */
	flen = FUNC0(find);
	if (FUNC0(source) == 0 || flen == 0)
		return (0);

	/* Loop until the end of the string */
	while (*p != '\0') {
		if (FUNC1(p, find, flen) == 0) { /* found an instance */
			p += flen;
			n++;
		} else
			p++;
	}

	return (n);
}