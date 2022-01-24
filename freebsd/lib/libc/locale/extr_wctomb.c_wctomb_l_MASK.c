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
struct TYPE_2__ {size_t (* __wcrtomb ) (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  wctomb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC3(char *s, wchar_t wchar, locale_t locale)
{
	static const mbstate_t initial;
	size_t rval;
	FUNC0(locale);

	if (s == NULL) {
		/* No support for state dependent encodings. */
		FUNC1(locale)->wctomb = initial;
		return (0);
	}
	if ((rval = FUNC1(locale)->__wcrtomb(s, wchar,
	    &(FUNC1(locale)->wctomb))) == (size_t)-1)
		return (-1);
	return ((int)rval);
}