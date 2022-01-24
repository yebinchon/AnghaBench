#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
struct macros {scalar_t__ level; char** macro; size_t offset; } ;
struct TYPE_8__ {TYPE_1__* el_read; } ;
struct TYPE_7__ {int (* read_char ) (TYPE_2__*,char*) ;int /*<<< orphan*/  read_errno; struct macros macros; } ;
typedef  TYPE_2__ EditLine ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (struct macros*) ; 
 int FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 

int
FUNC4(EditLine *el, wchar_t *cp)
{
	struct macros *ma = &el->el_read->macros;
	int num_read;

	FUNC2(el);
	for (;;) {
		if (ma->level < 0)
			break;

		if (ma->macro[0][ma->offset] == '\0') {
			FUNC0(ma);
			continue;
		}

		*cp = ma->macro[0][ma->offset++];

		if (ma->macro[0][ma->offset] == '\0') {
			/* Needed for QuoteMode On */
			FUNC0(ma);
		}

		return 1;
	}

	if (FUNC3(el) < 0)/* make sure the tty is set up correctly */
		return 0;

	num_read = (*el->el_read->read_char)(el, cp);

	/*
	 * Remember the original reason of a read failure
	 * such that el_wgets() can restore it after doing
	 * various cleanup operation that might change errno.
	 */
	if (num_read < 0)
		el->el_read->read_errno = errno;

	return num_read;
}