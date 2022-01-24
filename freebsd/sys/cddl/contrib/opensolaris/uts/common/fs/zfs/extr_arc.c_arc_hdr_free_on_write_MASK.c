#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_11__ {int /*<<< orphan*/  arcs_size; int /*<<< orphan*/ * arcs_esize; } ;
typedef  TYPE_2__ arc_state_t ;
struct TYPE_10__ {int /*<<< orphan*/  b_pabd; int /*<<< orphan*/  b_refcnt; int /*<<< orphan*/  b_arc_node; TYPE_2__* b_state; } ;
struct TYPE_12__ {TYPE_1__ b_l1hdr; } ;
typedef  TYPE_3__ arc_buf_hdr_t ;
typedef  size_t arc_buf_contents_t ;

/* Variables and functions */
 size_t ARC_BUFC_DATA ; 
 size_t ARC_BUFC_METADATA ; 
 int /*<<< orphan*/  ARC_SPACE_DATA ; 
 int /*<<< orphan*/  ARC_SPACE_META ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* arc_anon ; 
 size_t FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 TYPE_2__* arc_l2c_only ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static void
FUNC8(arc_buf_hdr_t *hdr)
{
	arc_state_t *state = hdr->b_l1hdr.b_state;
	arc_buf_contents_t type = FUNC1(hdr);
	uint64_t size = FUNC2(hdr);

	/* protected by hash lock, if in the hash table */
	if (FUNC5(&hdr->b_l1hdr.b_arc_node)) {
		FUNC0(FUNC6(&hdr->b_l1hdr.b_refcnt));
		FUNC0(state != arc_anon && state != arc_l2c_only);

		(void) FUNC7(&state->arcs_esize[type],
		    size, hdr);
	}
	(void) FUNC7(&state->arcs_size, size, hdr);
	if (type == ARC_BUFC_METADATA) {
		FUNC3(size, ARC_SPACE_META);
	} else {
		FUNC0(type == ARC_BUFC_DATA);
		FUNC3(size, ARC_SPACE_DATA);
	}

	FUNC4(hdr->b_l1hdr.b_pabd, size, type);
}