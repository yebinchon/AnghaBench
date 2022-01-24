#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  prof_tctx_tree_t ;
struct TYPE_6__ {int state; TYPE_1__* gctx; } ;
typedef  TYPE_2__ prof_tctx_t ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
#define  prof_tctx_state_dumping 130 
#define  prof_tctx_state_nominal 129 
#define  prof_tctx_state_purgatory 128 

__attribute__((used)) static prof_tctx_t *
FUNC2(prof_tctx_tree_t *tctxs, prof_tctx_t *tctx, void *arg) {
	tsdn_t *tsdn = (tsdn_t *)arg;
	prof_tctx_t *ret;

	FUNC0(tsdn, tctx->gctx->lock);

	switch (tctx->state) {
	case prof_tctx_state_nominal:
		/* New since dumping started; ignore. */
		break;
	case prof_tctx_state_dumping:
		tctx->state = prof_tctx_state_nominal;
		break;
	case prof_tctx_state_purgatory:
		ret = tctx;
		goto label_return;
	default:
		FUNC1();
	}

	ret = NULL;
label_return:
	return ret;
}