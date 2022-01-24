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
 int /*<<< orphan*/  FUNC0 (char*,char,int) ; 
 size_t FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 

char *
FUNC4(char *dst, const char *src, int dstsize)
{
	size_t len;

	FUNC0(dst, '\0', dstsize);

	/* Always skip prefix if present */
	if (FUNC2(src, "/dev/", 5) == 0)
		src += 5;

#ifdef WITH_ABBREV_NO_TTY
	if (strncmp(src, "tty", 3) == 0)
		src += 3;
#endif

	len = FUNC1(src);

	if (len > 0) {
		if (((int)len - dstsize) > 0)
			src +=  ((int)len - dstsize);

		/* note: _don't_ change this to strlcpy */
		FUNC3(dst, src, (size_t)dstsize);
	}

	return (dst);
}