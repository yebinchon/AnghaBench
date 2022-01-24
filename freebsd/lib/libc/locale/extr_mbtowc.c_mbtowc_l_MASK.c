#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  mbstate_t ;
typedef  int /*<<< orphan*/  locale_t ;
struct TYPE_2__ {size_t (* __mbrtowc ) (int /*<<< orphan*/ *,char const*,size_t,int /*<<< orphan*/ *) ;int /*<<< orphan*/  mbtowc; } ;

/* Variables and functions */
 int /*<<< orphan*/  EILSEQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 size_t FUNC2 (int /*<<< orphan*/ *,char const*,size_t,int /*<<< orphan*/ *) ; 

int
FUNC3(wchar_t * __restrict pwc, const char * __restrict s, size_t n, locale_t locale)
{
	static const mbstate_t initial;
	size_t rval;
	FUNC0(locale);

	if (s == NULL) {
		/* No support for state dependent encodings. */
		FUNC1(locale)->mbtowc = initial;
		return (0);
	}
	rval = FUNC1(locale)->__mbrtowc(pwc, s, n,
	    &(FUNC1(locale)->mbtowc));
	switch (rval) {
	case (size_t)-2:
		errno = EILSEQ;
		/* FALLTHROUGH */
	case (size_t)-1:
		return (-1);
	default:
		return ((int)rval);
	}
}