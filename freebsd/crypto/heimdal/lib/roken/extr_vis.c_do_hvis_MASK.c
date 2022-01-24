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
 char* FUNC0 (char*,int,int,int,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int) ; 
 void* FUNC4 (unsigned int) ; 

__attribute__((used)) static char *
FUNC5(char *dst, int c, int flag, int nextc, const char *extra)
{
	if (!FUNC2(c) || !FUNC1(c) || FUNC3("$-_.+!*'(),", c) != NULL) {
		*dst++ = '%';
		*dst++ = FUNC4(((unsigned int)c >> 4) & 0xf);
		*dst++ = FUNC4((unsigned int)c & 0xf);
	} else {
		dst = FUNC0(dst, c, flag, nextc, extra);
	}
	return dst;
}