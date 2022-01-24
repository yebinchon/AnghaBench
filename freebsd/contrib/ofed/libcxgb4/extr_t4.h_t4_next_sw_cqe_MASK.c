#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct t4_cqe {int dummy; } ;
struct t4_cq {scalar_t__ sw_in_use; scalar_t__ size; int error; size_t sw_cidx; struct t4_cqe* sw_queue; int /*<<< orphan*/  cqid; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_NOTICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct t4_cqe *FUNC2(struct t4_cq *cq)
{
	if (cq->sw_in_use == cq->size) {
		FUNC1(LOG_NOTICE, "cxgb4 sw cq overflow cqid %u\n", cq->cqid);
		cq->error = 1;
		FUNC0(0);
		return NULL;
	}
	if (cq->sw_in_use)
		return &cq->sw_queue[cq->sw_cidx];
	return NULL;
}