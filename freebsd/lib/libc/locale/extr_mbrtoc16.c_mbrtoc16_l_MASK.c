#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  mbstate_t ;
typedef  int /*<<< orphan*/  locale_t ;
typedef  int char32_t ;
typedef  int char16_t ;
struct TYPE_3__ {int trail_surrogate; int /*<<< orphan*/  c32_mbstate; } ;
typedef  TYPE_1__ _Char16State ;
struct TYPE_4__ {int /*<<< orphan*/  mbrtoc16; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int*,char const*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

size_t
FUNC3(char16_t * __restrict pc16, const char * __restrict s, size_t n,
    mbstate_t * __restrict ps, locale_t locale)
{
	_Char16State *cs;
	char32_t c32;
	ssize_t len;

	FUNC0(locale);
	if (ps == NULL)
		ps = &(FUNC1(locale)->mbrtoc16);
	cs = (_Char16State *)ps;

	/*
	 * Call straight into mbrtoc32_l() if we don't need to return a
	 * character value. According to the spec, if s is a null
	 * pointer, the value of parameter pc16 is also ignored.
	 */
	if (pc16 == NULL || s == NULL) {
		cs->trail_surrogate = 0;
		return (FUNC2(NULL, s, n, &cs->c32_mbstate, locale));
	}

	/* Return the trail surrogate from the previous invocation. */
	if (cs->trail_surrogate >= 0xdc00 && cs->trail_surrogate <= 0xdfff) {
		*pc16 = cs->trail_surrogate;
		cs->trail_surrogate = 0;
		return ((size_t)-3);
	}

	len = FUNC2(&c32, s, n, &cs->c32_mbstate, locale);
	if (len >= 0) {
		if (c32 < 0x10000) {
			/* Fits in one UTF-16 character. */
			*pc16 = c32;
		} else {
			/* Split up in a surrogate pair. */
			c32 -= 0x10000;
			*pc16 = 0xd800 | (c32 >> 10);
			cs->trail_surrogate = 0xdc00 | (c32 & 0x3ff);
		}
	}
	return (len);
}