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
struct tm {int dummy; } ;
typedef  int /*<<< orphan*/  mbstate_t ;
typedef  int /*<<< orphan*/  locale_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t MB_CUR_MAX ; 
 size_t SIZE_T_MAX ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,char const**,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,size_t,char*,struct tm const*,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (char*,int /*<<< orphan*/  const**,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

size_t
FUNC6(wchar_t * __restrict wcs, size_t maxsize,
	const wchar_t * __restrict format, const struct tm * __restrict timeptr,
	locale_t locale)
{
	static const mbstate_t initial;
	mbstate_t mbs;
	char *dst, *sformat;
	const char *dstp;
	const wchar_t *formatp;
	size_t n, sflen;
	int sverrno;
	FUNC0(locale);

	sformat = dst = NULL;

	/*
	 * Convert the supplied format string to a multibyte representation
	 * for strftime(), which only handles single-byte characters.
	 */
	mbs = initial;
	formatp = format;
	sflen = FUNC5(NULL, &formatp, 0, &mbs, locale);
	if (sflen == (size_t)-1)
		goto error;
	if ((sformat = FUNC2(sflen + 1)) == NULL)
		goto error;
	mbs = initial;
	FUNC5(sformat, &formatp, sflen + 1, &mbs, locale);

	/*
	 * Allocate memory for longest multibyte sequence that will fit
	 * into the caller's buffer and call strftime() to fill it.
	 * Then, copy and convert the result back into wide characters in
	 * the caller's buffer.
	 */
	if (SIZE_T_MAX / MB_CUR_MAX <= maxsize) {
		/* maxsize is prepostorously large - avoid int. overflow. */
		errno = EINVAL;
		goto error;
	}
	if ((dst = FUNC2(maxsize * MB_CUR_MAX)) == NULL)
		goto error;
	if (FUNC4(dst, maxsize, sformat, timeptr, locale) == 0)
		goto error;
	dstp = dst;
	mbs = initial;
	n = FUNC3(wcs, &dstp, maxsize, &mbs, locale);
	if (n == (size_t)-2 || n == (size_t)-1 || dstp != NULL)
		goto error;

	FUNC1(sformat);
	FUNC1(dst);
	return (n);

error:
	sverrno = errno;
	FUNC1(sformat);
	FUNC1(dst);
	errno = sverrno;
	return (0);
}