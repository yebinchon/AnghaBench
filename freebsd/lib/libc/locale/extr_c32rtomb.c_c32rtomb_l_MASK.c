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
typedef  int char32_t ;
struct TYPE_2__ {int /*<<< orphan*/  c32rtomb; } ;

/* Variables and functions */
 int /*<<< orphan*/  EILSEQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 size_t FUNC2 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

size_t
FUNC3(char * __restrict s, char32_t c32, mbstate_t * __restrict ps,
    locale_t locale)
{

	/* Unicode Standard 5.0, D90: ill-formed characters. */
	if ((c32 >= 0xd800 && c32 <= 0xdfff) || c32 > 0x10ffff) {
		errno = EILSEQ;
		return ((size_t)-1);
	}

	FUNC0(locale);
	if (ps == NULL)
		ps = &(FUNC1(locale)->c32rtomb);

	/* Assume wchar_t uses UTF-32. */
	return (FUNC2(s, c32, ps, locale));
}