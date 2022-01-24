#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct block {int dummy; } ;
struct TYPE_5__ {int prevlinktype; scalar_t__ is_geneve; } ;
typedef  TYPE_1__ compiler_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_H ; 
#define  DLT_SUNATM 128 
 int /*<<< orphan*/  OR_PREVLINKHDR ; 
 int /*<<< orphan*/  SUNATM_PKT_BEGIN_POS ; 
 struct block* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct block* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct block*) ; 

__attribute__((used)) static struct block *
FUNC3(compiler_state_t *cstate)
{
	struct block *b0;

	if (cstate->is_geneve)
		return FUNC1(cstate);

	switch (cstate->prevlinktype) {

	case DLT_SUNATM:
		/*
		 * This is LANE-encapsulated Ethernet; check that the LANE
		 * packet doesn't begin with an LE Control marker, i.e.
		 * that it's data, not a control message.
		 *
		 * (We've already generated a test for LANE.)
		 */
		b0 = FUNC0(cstate, OR_PREVLINKHDR, SUNATM_PKT_BEGIN_POS, BPF_H, 0xFF00);
		FUNC2(b0);
		return b0;

	default:
		/*
		 * No such tests are necessary.
		 */
		return NULL;
	}
	/*NOTREACHED*/
}