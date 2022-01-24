#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_6__ {int pidx; int size; int wq_pidx; TYPE_2__* queue; int /*<<< orphan*/  in_use; } ;
struct t4_wq {TYPE_3__ sq; int /*<<< orphan*/  error; } ;
struct TYPE_4__ {int host_pidx; } ;
struct TYPE_5__ {TYPE_1__ status; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  T4_EQ_ENTRY_SIZE ; 
 int T4_SQ_NUM_SLOTS ; 

__attribute__((used)) static inline void FUNC1(struct t4_wq *wq, u8 len16)
{
	wq->sq.in_use++;
	if (++wq->sq.pidx == wq->sq.size)
		wq->sq.pidx = 0;
	wq->sq.wq_pidx += FUNC0(len16*16, T4_EQ_ENTRY_SIZE);
	if (wq->sq.wq_pidx >= wq->sq.size * T4_SQ_NUM_SLOTS)
		wq->sq.wq_pidx %= wq->sq.size * T4_SQ_NUM_SLOTS;
	if (!wq->error) {
		/* This write is only for debugging, the value does not matter
		 * for DMA */
		wq->sq.queue[wq->sq.size].status.host_pidx = (wq->sq.pidx);
	}
}