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
typedef  int wchar_t ;

/* Variables and functions */
 int PATHMATCH_NO_ANCHOR_START ; 
 int FUNC0 (int const*,int const*,int) ; 
 int* FUNC1 (int const*,int) ; 

int
FUNC2(const wchar_t *p, const wchar_t *s, int flags)
{
	/* Empty pattern only matches the empty string. */
	if (p == NULL || *p == L'\0')
		return (s == NULL || *s == L'\0');

	/* Leading '^' anchors the start of the pattern. */
	if (*p == L'^') {
		++p;
		flags &= ~PATHMATCH_NO_ANCHOR_START;
	}

	if (*p == L'/' && *s != L'/')
		return (0);

	/* Certain patterns anchor implicitly. */
	if (*p == L'*' || *p == L'/') {
		while (*p == L'/')
			++p;
		while (*s == L'/')
			++s;
		return (FUNC0(p, s, flags));
	}

	/* If start is unanchored, try to match start of each path element. */
	if (flags & PATHMATCH_NO_ANCHOR_START) {
		for ( ; s != NULL; s = FUNC1(s, L'/')) {
			if (*s == L'/')
				s++;
			if (FUNC0(p, s, flags))
				return (1);
		}
		return (0);
	}

	/* Default: Match from beginning. */
	return (FUNC0(p, s, flags));
}