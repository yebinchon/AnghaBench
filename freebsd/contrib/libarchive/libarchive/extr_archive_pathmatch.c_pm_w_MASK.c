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
 int PATHMATCH_NO_ANCHOR_END ; 
 int /*<<< orphan*/  FUNC0 (int const*,int const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int const*,int const*,int const,int) ; 
 int* FUNC2 (int const*) ; 

__attribute__((used)) static int
FUNC3(const wchar_t *p, const wchar_t *s, int flags)
{
	const wchar_t *end;

	/*
	 * Ignore leading './', './/', '././', etc.
	 */
	if (s[0] == L'.' && s[1] == L'/')
		s = FUNC2(s + 1);
	if (p[0] == L'.' && p[1] == L'/')
		p = FUNC2(p + 1);

	for (;;) {
		switch (*p) {
		case L'\0':
			if (s[0] == L'/') {
				if (flags & PATHMATCH_NO_ANCHOR_END)
					return (1);
				/* "dir" == "dir/" == "dir/." */
				s = FUNC2(s);
			}
			return (*s == L'\0');
		case L'?':
			/* ? always succeeds, unless we hit end of 's' */
			if (*s == L'\0')
				return (0);
			break;
		case L'*':
			/* "*" == "**" == "***" ... */
			while (*p == L'*')
				++p;
			/* Trailing '*' always succeeds. */
			if (*p == L'\0')
				return (1);
			while (*s) {
				if (FUNC0(p, s, flags))
					return (1);
				++s;
			}
			return (0);
		case L'[':
			/*
			 * Find the end of the [...] character class,
			 * ignoring \] that might occur within the class.
			 */
			end = p + 1;
			while (*end != L'\0' && *end != L']') {
				if (*end == L'\\' && end[1] != L'\0')
					++end;
				++end;
			}
			if (*end == L']') {
				/* We found [...], try to match it. */
				if (!FUNC1(p + 1, end, *s, flags))
					return (0);
				p = end; /* Jump to trailing ']' char. */
				break;
			} else
				/* No final ']', so just match '['. */
				if (*p != *s)
					return (0);
			break;
		case L'\\':
			/* Trailing '\\' matches itself. */
			if (p[1] == L'\0') {
				if (*s != L'\\')
					return (0);
			} else {
				++p;
				if (*p != *s)
					return (0);
			}
			break;
		case L'/':
			if (*s != L'/' && *s != L'\0')
				return (0);
			/* Note: pattern "/\./" won't match "/";
			 * pm_slashskip() correctly stops at backslash. */
			p = FUNC2(p);
			s = FUNC2(s);
			if (*p == L'\0' && (flags & PATHMATCH_NO_ANCHOR_END))
				return (1);
			--p; /* Counteract the increment below. */
			--s;
			break;
		case L'$':
			/* '$' is special only at end of pattern and only
			 * if PATHMATCH_NO_ANCHOR_END is specified. */
			if (p[1] == L'\0' && (flags & PATHMATCH_NO_ANCHOR_END)){
				/* "dir" == "dir/" == "dir/." */
				return (*FUNC2(s) == L'\0');
			}
			/* Otherwise, '$' is not special. */
			/* FALL THROUGH */
		default:
			if (*p != *s)
				return (0);
			break;
		}
		++p;
		++s;
	}
}