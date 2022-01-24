#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct block {int level; scalar_t__* dom; int /*<<< orphan*/  id; struct block* link; } ;
struct TYPE_5__ {int n_blocks; int nodewords; struct block** levels; int /*<<< orphan*/ * all_dom_sets; } ;
typedef  TYPE_1__ opt_state_t ;
typedef  int /*<<< orphan*/  bpf_u_int32 ;
struct TYPE_7__ {int /*<<< orphan*/  dom; } ;
struct TYPE_6__ {int /*<<< orphan*/  dom; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (struct block*) ; 
 TYPE_3__* FUNC1 (struct block*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__*,int) ; 

__attribute__((used)) static void
FUNC4(opt_state_t *opt_state, struct block *root)
{
	int i;
	struct block *b;
	bpf_u_int32 *x;

	/*
	 * Initialize sets to contain all nodes.
	 */
	x = opt_state->all_dom_sets;
	i = opt_state->n_blocks * opt_state->nodewords;
	while (--i >= 0)
		*x++ = 0xFFFFFFFFU;
	/* Root starts off empty. */
	for (i = opt_state->nodewords; --i >= 0;)
		root->dom[i] = 0;

	/* root->level is the highest level no found. */
	for (i = root->level; i >= 0; --i) {
		for (b = opt_state->levels[i]; b; b = b->link) {
			FUNC2(b->dom, b->id);
			if (FUNC1(b) == 0)
				continue;
			FUNC3(FUNC1(b)->dom, b->dom, opt_state->nodewords);
			FUNC3(FUNC0(b)->dom, b->dom, opt_state->nodewords);
		}
	}
}