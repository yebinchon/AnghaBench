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
typedef  int /*<<< orphan*/  rrwlock_t ;
struct TYPE_4__ {void* rn_tag; int /*<<< orphan*/  rn_next; int /*<<< orphan*/ * rn_rrl; } ;
typedef  TYPE_1__ rrw_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rrw_tsd_key ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4(rrwlock_t *rrl, void *tag)
{
	rrw_node_t *rn;

	rn = FUNC1(sizeof (*rn), KM_SLEEP);
	rn->rn_rrl = rrl;
	rn->rn_next = FUNC2(rrw_tsd_key);
	rn->rn_tag = tag;
	FUNC0(FUNC3(rrw_tsd_key, rn) == 0);
}