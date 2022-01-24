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
struct TYPE_4__ {int /*<<< orphan*/  libthr_debug_addr; int /*<<< orphan*/  ph; } ;
typedef  TYPE_1__ td_thragent_t ;
typedef  int /*<<< orphan*/  td_err_e ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  TD_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static td_err_e
FUNC3(td_thragent_t *ta)
{
	int dbg;

	FUNC0();

	dbg = 0;
	/*
	 * Error returns from this write are not really a problem;
	 * the process doesn't exist any more.
	 */
	FUNC2(ta->ph, ta->libthr_debug_addr, &dbg, sizeof(int));
	FUNC1(ta);
	return (TD_OK);
}