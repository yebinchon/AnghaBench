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
struct TYPE_2__ {size_t (* __mbsnrtowcs ) (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIZE_T_MAX ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 

size_t
FUNC3(wchar_t * __restrict pwcs, const char * __restrict s, size_t n, locale_t locale)
{
	static const mbstate_t initial;
	mbstate_t mbs;
	const char *sp;
	FUNC0(locale);

	mbs = initial;
	sp = s;
	return (FUNC1(locale)->__mbsnrtowcs(pwcs, &sp, SIZE_T_MAX, n, &mbs));
}