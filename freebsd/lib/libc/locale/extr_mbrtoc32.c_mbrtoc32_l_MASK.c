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
typedef  int /*<<< orphan*/  mbstate_t ;
typedef  int /*<<< orphan*/  locale_t ;
typedef  int /*<<< orphan*/  char32_t ;
struct TYPE_2__ {int /*<<< orphan*/  mbrtoc32; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,char const*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

size_t
FUNC3(char32_t * __restrict pc32, const char * __restrict s, size_t n,
    mbstate_t * __restrict ps, locale_t locale)
{

	FUNC0(locale);
	if (ps == NULL)
		ps = &(FUNC1(locale)->mbrtoc32);

	/* Assume wchar_t uses UTF-32. */
	return (FUNC2(pc32, s, n, ps, locale));
}