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
 int VIS_DQ ; 
 int VIS_NOSLASH ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 char* FUNC2 (char*,int,int,char const) ; 

int
FUNC3(char *dst, const char *src, size_t siz, int flag)
{
	char *start, *end;
	char tbuf[5];
	int c, i;

	i = 0;
	for (start = dst, end = start + siz - 1; (c = *src) && dst < end; ) {
		if (FUNC0(c, flag)) {
			if ((c == '"' && (flag & VIS_DQ) != 0) ||
			    (c == '\\' && (flag & VIS_NOSLASH) == 0)) {
				/* need space for the extra '\\' */
				if (dst + 1 >= end) {
					i = 2;
					break;
				}
				*dst++ = '\\';
			}
			i = 1;
			*dst++ = c;
			src++;
		} else {
			i = FUNC2(tbuf, c, flag, *++src) - tbuf;
			if (dst + i <= end) {
				FUNC1(dst, tbuf, i);
				dst += i;
			} else {
				src--;
				break;
			}
		}
	}
	if (siz > 0)
		*dst = '\0';
	if (dst + i > end) {
		/* adjust return value for truncation */
		while ((c = *src))
			dst += FUNC2(tbuf, c, flag, *++src) - tbuf;
	}
	return (dst - start);
}