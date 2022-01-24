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
struct TYPE_2__ {size_t (* __wcrtomb ) (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  wcrtomb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

size_t
FUNC3(char * __restrict s, wchar_t wc, mbstate_t * __restrict ps,
		locale_t locale)
{
	FUNC0(locale);
	if (ps == NULL)
		ps = &(FUNC1(locale)->wcrtomb);
	return (FUNC1(locale)->__wcrtomb(s, wc, ps));
}