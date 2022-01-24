#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int forking; int /*<<< orphan*/  witnesses; } ;
typedef  TYPE_1__ witness_tsd_t ;
typedef  int /*<<< orphan*/  witness_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  config_debug ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void
FUNC1(witness_tsd_t *witness_tsd) {
	if (!config_debug) {
		return;
	}
#ifndef JEMALLOC_MUTEX_INIT_CB
	witness_list_t *witnesses;

	witnesses = &witness_tsd->witnesses;
	FUNC0(witnesses);
#endif
	witness_tsd->forking = false;
}