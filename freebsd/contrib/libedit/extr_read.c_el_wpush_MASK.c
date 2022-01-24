#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct macros {int level; int /*<<< orphan*/ ** macro; } ;
struct TYPE_7__ {TYPE_1__* el_read; } ;
struct TYPE_6__ {struct macros macros; } ;
typedef  TYPE_2__ EditLine ;

/* Variables and functions */
 int EL_MAXMACRO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*) ; 

void
FUNC3(EditLine *el, const wchar_t *str)
{
	struct macros *ma = &el->el_read->macros;

	if (str != NULL && ma->level + 1 < EL_MAXMACRO) {
		ma->level++;
		if ((ma->macro[ma->level] = FUNC2(str)) != NULL)
			return;
		ma->level--;
	}
	FUNC1(el);
	FUNC0(el);
}