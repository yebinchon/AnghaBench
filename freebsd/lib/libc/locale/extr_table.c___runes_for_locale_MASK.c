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
struct xlocale_ctype {int __mb_sb_limit; int /*<<< orphan*/ * runes; } ;
typedef  int /*<<< orphan*/  locale_t ;
typedef  int /*<<< orphan*/  _RuneLocale ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct xlocale_ctype* FUNC1 (int /*<<< orphan*/ ) ; 

_RuneLocale *
FUNC2(locale_t locale, int *mb_sb_limit)
{
	FUNC0(locale);
	struct xlocale_ctype *c = FUNC1(locale);
	*mb_sb_limit = c->__mb_sb_limit;
	return c->runes;
}