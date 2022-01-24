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
 scalar_t__ FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 char FUNC2 (unsigned char) ; 

__attribute__((used)) static const char *
FUNC3(char *dst, size_t dlen, const char *src)
{
	size_t i;
	int dochange = 1;

	for (i = 0; src[i] != '\0' && i < dlen - 1; i++) {
		dst[i] = src[i];
		if (FUNC0((unsigned char)dst[i]))
			dochange = 0;
	}
	dst[i] = '\0';

	if (dochange) {
		for (i = 0; dst[i] != '\0'; i++)
			if (FUNC1((unsigned char)dst[i]))
				dst[i] = FUNC2((unsigned char)dst[i]);
	}
	return dst;
}