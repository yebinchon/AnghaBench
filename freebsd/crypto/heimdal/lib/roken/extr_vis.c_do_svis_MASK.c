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
typedef  void* u_char ;

/* Variables and functions */
#define  BELL 128 
 int VIS_CSTYLE ; 
 int VIS_NOSLASH ; 
 int VIS_OCTAL ; 
 int VIS_SAFE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,int) ; 

__attribute__((used)) static char *
FUNC7(char *dst, int c, int flag, int nextc, const char *extra)
{
	int isextra;
	isextra = FUNC6(extra, c) != NULL;
	if (!isextra && FUNC0(c) && (FUNC2(c) || FUNC5(c) ||
	    ((flag & VIS_SAFE) && FUNC4(c)))) {
		*dst++ = c;
		return dst;
	}
	if (flag & VIS_CSTYLE) {
		switch (c) {
		case '\n':
			*dst++ = '\\'; *dst++ = 'n';
			return dst;
		case '\r':
			*dst++ = '\\'; *dst++ = 'r';
			return dst;
		case '\b':
			*dst++ = '\\'; *dst++ = 'b';
			return dst;
		case BELL:
			*dst++ = '\\'; *dst++ = 'a';
			return dst;
		case '\v':
			*dst++ = '\\'; *dst++ = 'v';
			return dst;
		case '\t':
			*dst++ = '\\'; *dst++ = 't';
			return dst;
		case '\f':
			*dst++ = '\\'; *dst++ = 'f';
			return dst;
		case ' ':
			*dst++ = '\\'; *dst++ = 's';
			return dst;
		case '\0':
			*dst++ = '\\'; *dst++ = '0';
			if (FUNC3(nextc)) {
				*dst++ = '0';
				*dst++ = '0';
			}
			return dst;
		default:
			if (FUNC2(c)) {
				*dst++ = '\\'; *dst++ = c;
				return dst;
			}
		}
	}
	if (isextra || ((c & 0177) == ' ') || (flag & VIS_OCTAL)) {
		*dst++ = '\\';
		*dst++ = (u_char)(((unsigned int)(u_char)c >> 6) & 03) + '0';
		*dst++ = (u_char)(((unsigned int)(u_char)c >> 3) & 07) + '0';
		*dst++ = (u_char)(			 c       & 07) + '0';
	} else {
		if ((flag & VIS_NOSLASH) == 0) *dst++ = '\\';
		if (c & 0200) {
			c &= 0177; *dst++ = 'M';
		}
		if (FUNC1(c)) {
			*dst++ = '^';
			if (c == 0177)
				*dst++ = '?';
			else
				*dst++ = c + '@';
		} else {
			*dst++ = '-'; *dst++ = c;
		}
	}
	return dst;
}