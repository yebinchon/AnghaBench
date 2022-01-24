#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  bpl_lock; int /*<<< orphan*/  bpl_list; } ;
typedef  TYPE_1__ bplist_t ;
struct TYPE_7__ {int /*<<< orphan*/  bpe_blk; } ;
typedef  TYPE_2__ bplist_entry_t ;
typedef  int /*<<< orphan*/  blkptr_t ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 TYPE_2__* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(bplist_t *bpl, const blkptr_t *bp)
{
	bplist_entry_t *bpe = FUNC0(sizeof (*bpe), KM_SLEEP);

	FUNC2(&bpl->bpl_lock);
	bpe->bpe_blk = *bp;
	FUNC1(&bpl->bpl_list, bpe);
	FUNC3(&bpl->bpl_lock);
}