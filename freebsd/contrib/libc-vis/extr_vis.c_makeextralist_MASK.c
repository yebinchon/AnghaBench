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
typedef  scalar_t__ u_char ;
typedef  int /*<<< orphan*/  mbstate_t ;
typedef  int /*<<< orphan*/  mbstate ;

/* Variables and functions */
 scalar_t__ MAXEXTRAS ; 
 int VIS_DQ ; 
 int VIS_GLOB ; 
 int VIS_NL ; 
 int VIS_NOLOCALE ; 
 int VIS_NOSLASH ; 
 int VIS_SHELL ; 
 int VIS_SP ; 
 int VIS_TAB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int* FUNC1 (scalar_t__,int) ; 
 int* char_glob ; 
 int* char_shell ; 
 size_t FUNC2 (int*,char const**,size_t,int /*<<< orphan*/ *) ; 
 size_t FUNC3 (char const*) ; 
 int FUNC4 (int*) ; 

__attribute__((used)) static wchar_t *
FUNC5(int flags, const char *src)
{
	wchar_t *dst, *d;
	size_t len;
	const wchar_t *s;
	mbstate_t mbstate;

	FUNC0(&mbstate, sizeof(mbstate));
	len = FUNC3(src);
	if ((dst = FUNC1(len + MAXEXTRAS, sizeof(*dst))) == NULL)
		return NULL;

	if ((flags & VIS_NOLOCALE) || FUNC2(dst, &src, len, &mbstate) == (size_t)-1) {
		size_t i;
		for (i = 0; i < len; i++)
			dst[i] = (wchar_t)(u_char)src[i];
		d = dst + len;
	} else
		d = dst + FUNC4(dst);

	if (flags & VIS_GLOB)
		for (s = char_glob; *s; *d++ = *s++)
			continue;

	if (flags & VIS_SHELL)
		for (s = char_shell; *s; *d++ = *s++)
			continue;

	if (flags & VIS_SP) *d++ = L' ';
	if (flags & VIS_TAB) *d++ = L'\t';
	if (flags & VIS_NL) *d++ = L'\n';
	if (flags & VIS_DQ) *d++ = L'"';
	if ((flags & VIS_NOSLASH) == 0) *d++ = L'\\';
	*d = L'\0';

	return dst;
}