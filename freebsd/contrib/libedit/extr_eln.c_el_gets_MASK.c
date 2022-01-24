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
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_4__ {int /*<<< orphan*/  el_lgcyconv; } ;
typedef  TYPE_1__ EditLine ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const) ; 
 char const* FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int*) ; 

const char *
FUNC3(EditLine *el, int *nread)
{
	const wchar_t *tmp;

	tmp = FUNC2(el, nread);
	if (tmp != NULL) {
	    int i;
	    size_t nwread = 0;

	    for (i = 0; i < *nread; i++)
		nwread += FUNC0(tmp[i]);
	    *nread = (int)nwread;
	}
	return FUNC1(tmp, &el->el_lgcyconv);
}