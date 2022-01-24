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
struct TYPE_8__ {int /*<<< orphan*/  line; int /*<<< orphan*/  data; } ;
struct TYPE_7__ {int /*<<< orphan*/  num; int /*<<< orphan*/  str; } ;
typedef  TYPE_1__ HistEvent ;
typedef  TYPE_2__ HIST_ENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  H_DELDATA ; 
 int /*<<< orphan*/  H_GETSIZE ; 
 int /*<<< orphan*/ * e ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/ * h ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  history_length ; 
 int /*<<< orphan*/  FUNC3 () ; 

HIST_ENTRY *
FUNC4(int num)
{
	HIST_ENTRY *he;
	HistEvent ev;

	if (h == NULL || e == NULL)
		FUNC3();

	if ((he = FUNC1(sizeof(*he))) == NULL)
		return NULL;

	if (FUNC2(h, &ev, H_DELDATA, num, &he->data) != 0) {
		FUNC0(he);
		return NULL;
	}

	he->line = ev.str;
	if (FUNC2(h, &ev, H_GETSIZE) == 0)
		history_length = ev.num;

	return he;
}