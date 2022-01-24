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
typedef  int wchar_t ;
typedef  int /*<<< orphan*/  locale_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 

int
FUNC2(const wchar_t *pwcs, size_t n, locale_t locale)
{
	wchar_t wc;
	int len, l;
	FUNC0(locale);

	len = 0;
	while (n-- > 0 && (wc = *pwcs++) != L'\0') {
		if ((l = FUNC1(wc, locale)) < 0)
			return (-1);
		len += l;
	}
	return (len);
}