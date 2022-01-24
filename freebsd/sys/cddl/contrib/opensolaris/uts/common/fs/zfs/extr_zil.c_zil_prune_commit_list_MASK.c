#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  zl_itx_commit_list; int /*<<< orphan*/  zl_lock; TYPE_2__* zl_last_lwb_opened; int /*<<< orphan*/  zl_issuer_lock; } ;
typedef  TYPE_1__ zilog_t ;
struct TYPE_11__ {scalar_t__ lwb_state; } ;
typedef  TYPE_2__ lwb_t ;
struct TYPE_12__ {scalar_t__ lrc_txtype; } ;
typedef  TYPE_3__ lr_t ;
struct TYPE_13__ {TYPE_3__ itx_lr; int /*<<< orphan*/ * itx_private; } ;
typedef  TYPE_4__ itx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ LWB_STATE_FLUSH_DONE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ TX_COMMIT ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 

__attribute__((used)) static void
FUNC10(zilog_t *zilog)
{
	itx_t *itx;

	FUNC0(FUNC2(&zilog->zl_issuer_lock));

	while ((itx = FUNC3(&zilog->zl_itx_commit_list))) {
		lr_t *lrc = &itx->itx_lr;
		if (lrc->lrc_txtype != TX_COMMIT)
			break;

		FUNC5(&zilog->zl_lock);

		lwb_t *last_lwb = zilog->zl_last_lwb_opened;
		if (last_lwb == NULL ||
		    last_lwb->lwb_state == LWB_STATE_FLUSH_DONE) {
			/*
			 * All of the itxs this waiter was waiting on
			 * must have already completed (or there were
			 * never any itx's for it to wait on), so it's
			 * safe to skip this waiter and mark it done.
			 */
			FUNC8(itx->itx_private);
		} else {
			FUNC7(itx->itx_private, last_lwb);
			itx->itx_private = NULL;
		}

		FUNC6(&zilog->zl_lock);

		FUNC4(&zilog->zl_itx_commit_list, itx);
		FUNC9(itx);
	}

	FUNC1(itx != NULL, itx->itx_lr.lrc_txtype != TX_COMMIT);
}