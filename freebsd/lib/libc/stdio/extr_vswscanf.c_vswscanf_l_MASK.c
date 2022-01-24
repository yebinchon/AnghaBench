#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  mbstate_t ;
typedef  int /*<<< orphan*/  locale_t ;
struct TYPE_5__ {unsigned char* _base; size_t _size; } ;
struct TYPE_6__ {unsigned char* _p; size_t _r; int /*<<< orphan*/  _read; TYPE_1__ _bf; int /*<<< orphan*/  _flags; } ;
typedef  TYPE_2__ FILE ;

/* Variables and functions */
 int EOF ; 
 TYPE_2__ FAKE_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MB_CUR_MAX ; 
 int /*<<< orphan*/  SIZE_T_MAX ; 
 int /*<<< orphan*/  __SRD ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eofread ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 
 size_t FUNC5 (char*,int /*<<< orphan*/  const**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC6(const wchar_t * __restrict str, locale_t locale,
		const wchar_t * __restrict fmt, va_list ap)
{
	static const mbstate_t initial;
	mbstate_t mbs;
	FILE f = FAKE_FILE;
	char *mbstr;
	size_t mlen;
	int r;
	const wchar_t *strp;
	FUNC0(locale);

	/*
	 * XXX Convert the wide character string to multibyte, which
	 * __vfwscanf() will convert back to wide characters.
	 */
	if ((mbstr = FUNC3(FUNC4(str) * MB_CUR_MAX + 1)) == NULL)
		return (EOF);
	mbs = initial;
	strp = str;
	if ((mlen = FUNC5(mbstr, &strp, SIZE_T_MAX, &mbs, locale)) == (size_t)-1) {
		FUNC2(mbstr);
		return (EOF);
	}
	f._flags = __SRD;
	f._bf._base = f._p = (unsigned char *)mbstr;
	f._bf._size = f._r = mlen;
	f._read = eofread;
	r = FUNC1(&f, locale, fmt, ap);
	FUNC2(mbstr);

	return (r);
}