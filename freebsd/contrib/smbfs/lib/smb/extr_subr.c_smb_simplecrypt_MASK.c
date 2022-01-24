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
 scalar_t__ FUNC2 (int) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int FUNC5 (char const*) ; 

char *
FUNC6(char *dst, const char *src)
{
	int ch, pos;
	char *dp;

	if (dst == NULL) {
		dst = FUNC3(4 + 2 * FUNC5(src));
		if (dst == NULL)
			return NULL;
	}
	dp = dst;
	*dst++ = '$';
	*dst++ = '$';
	*dst++ = '1';
	pos = 27;
	while (*src) {
		ch = *src++;
		if (FUNC0(ch))
		    ch = (FUNC2(ch) ? ('A' + (ch - 'A' + 13) % 26) :
			  FUNC1(ch) ? ('a' + (ch - 'a' + 13) % 26) : ch);
		ch ^= pos;
		pos += 13;
		if (pos > 256)
			pos -= 256;
		FUNC4(dst, "%02x", ch);
		dst += 2;
	}
	*dst = 0;
	return dp;
}