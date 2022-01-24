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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  mbstate_t ;
typedef  int /*<<< orphan*/  locale_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 char* FUNC3 (size_t) ; 
 long double FUNC4 (char*,char**,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (char*,int /*<<< orphan*/  const**,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

long double
FUNC6(const wchar_t * __restrict nptr, wchar_t ** __restrict endptr,
		locale_t locale)
{
	static const mbstate_t initial;
	mbstate_t mbs;
	long double val;
	char *buf, *end;
	const wchar_t *wcp;
	size_t len;
	size_t spaces;
	FUNC0(locale);

	wcp = nptr;
	spaces = 0;
	while (FUNC2(*wcp, locale)) {
		wcp++;
		spaces++;
	}

	mbs = initial;
	if ((len = FUNC5(NULL, &wcp, 0, &mbs, locale)) == (size_t)-1) {
		if (endptr != NULL)
			*endptr = (wchar_t *)nptr;
		return (0.0);
	}
	if ((buf = FUNC3(len + 1)) == NULL) {
		if (endptr != NULL)
			*endptr = (wchar_t *)nptr;
		return (0.0);
	}
	mbs = initial;
	FUNC5(buf, &wcp, len + 1, &mbs, locale);

	val = FUNC4(buf, &end, locale);

	if (endptr != NULL) {
		*endptr = (wchar_t *)nptr + (end - buf);
		if (buf != end)
			*endptr += spaces;
	}

	FUNC1(buf);

	return (val);
}