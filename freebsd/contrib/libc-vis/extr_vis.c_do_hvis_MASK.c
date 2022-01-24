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
typedef  int wint_t ;
typedef  int /*<<< orphan*/  wchar_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int) ; 
 void* FUNC2 (unsigned int) ; 

__attribute__((used)) static wchar_t *
FUNC3(wchar_t *dst, wint_t c, int flags, wint_t nextc, const wchar_t *extra)
{
	if (FUNC1(c)
	    /* safe */
	    || c == L'$' || c == L'-' || c == L'_' || c == L'.' || c == L'+'
	    /* extra */
	    || c == L'!' || c == L'*' || c == L'\'' || c == L'(' || c == L')'
	    || c == L',')
		dst = FUNC0(dst, c, flags, nextc, extra);
	else {
		*dst++ = L'%';
		*dst++ = FUNC2(((unsigned int)c >> 4) & 0xf);
		*dst++ = FUNC2((unsigned int)c & 0xf);
	}

	return dst;
}