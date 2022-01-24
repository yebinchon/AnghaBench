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
 double FUNC4 (char*,char**,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (char*,int /*<<< orphan*/  const**,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

double
FUNC6(const wchar_t * __restrict nptr, wchar_t ** __restrict endptr,
		locale_t locale)
{
	static const mbstate_t initial;
	mbstate_t mbs;
	double val;
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

	/*
	 * Convert the supplied numeric wide char. string to multibyte.
	 *
	 * We could attempt to find the end of the numeric portion of the
	 * wide char. string to avoid converting unneeded characters but
	 * choose not to bother; optimising the uncommon case where
	 * the input string contains a lot of text after the number
	 * duplicates a lot of strtod()'s functionality and slows down the
	 * most common cases.
	 */
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

	/* Let strtod() do most of the work for us. */
	val = FUNC4(buf, &end, locale);

	/*
	 * We only know where the number ended in the _multibyte_
	 * representation of the string. If the caller wants to know
	 * where it ended, count multibyte characters to find the
	 * corresponding position in the wide char string.
	 */
	if (endptr != NULL) {
		*endptr = (wchar_t *)nptr + (end - buf);
		if (buf != end)
			*endptr += spaces;
	}

	FUNC1(buf);

	return (val);
}