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
typedef  int /*<<< orphan*/  histdata_t ;
struct TYPE_8__ {int /*<<< orphan*/ * line; int /*<<< orphan*/  data; } ;
struct TYPE_7__ {int num; int /*<<< orphan*/  str; } ;
typedef  TYPE_1__ HistEvent ;
typedef  TYPE_2__ HIST_ENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  H_CURR ; 
 int /*<<< orphan*/  H_LAST ; 
 int /*<<< orphan*/  H_NEXT_EVDATA ; 
 int /*<<< orphan*/  H_REPLACE ; 
 int /*<<< orphan*/  H_SET ; 
 int /*<<< orphan*/ * e ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/ * h ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 

HIST_ENTRY *
FUNC5(int num, const char *line, histdata_t data)
{
	HIST_ENTRY *he;
	HistEvent ev;
	int curr_num;

	if (h == NULL || e == NULL)
		FUNC3();

	/* save current position */
	if (FUNC2(h, &ev, H_CURR) != 0)
		return NULL;
	curr_num = ev.num;

	/* start from the oldest */
	if (FUNC2(h, &ev, H_LAST) != 0)
		return NULL;	/* error */

	if ((he = FUNC1(sizeof(*he))) == NULL)
		return NULL;

	/* look forwards for event matching specified offset */
	if (FUNC2(h, &ev, H_NEXT_EVDATA, num, &he->data))
		goto out;

	he->line = FUNC4(ev.str);
	if (he->line == NULL)
		goto out;

	if (FUNC2(h, &ev, H_REPLACE, line, data))
		goto out;

	/* restore pointer to where it was */
	if (FUNC2(h, &ev, H_SET, curr_num))
		goto out;

	return he;
out:
	FUNC0(he);
	return NULL;
}