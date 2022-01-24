#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  el_lgcyconv; } ;
typedef  TYPE_1__ EditLine ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC2(EditLine *el, const char *str)
{
	/* Using multibyte->wide string decoding works fine under single-byte
	 * character sets too, and Does The Right Thing. */
	FUNC1(el, FUNC0(str, &el->el_lgcyconv));
}