#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  isc_mem_t ;
struct TYPE_6__ {int vectorlen; int /*<<< orphan*/  lock; struct TYPE_6__* rndvector; int /*<<< orphan*/ * entropy; int /*<<< orphan*/ * mctx; int /*<<< orphan*/  refcnt; } ;
typedef  TYPE_1__ isc_hash_t ;
typedef  int /*<<< orphan*/  canary1 ;
typedef  int /*<<< orphan*/  canary0 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC12(isc_hash_t **hctxp) {
	isc_hash_t *hctx;
	isc_mem_t *mctx;
	unsigned char canary0[4], canary1[4];

	FUNC3(hctxp != NULL && *hctxp != NULL);
	hctx = *hctxp;
	*hctxp = NULL;

	FUNC2(&hctx->lock);

	FUNC8(&hctx->refcnt);

	mctx = hctx->mctx;
#ifdef BIND9
	if (hctx->entropy != NULL)
		isc_entropy_detach(&hctx->entropy);
#endif
	if (hctx->rndvector != NULL)
		FUNC7(mctx, hctx->rndvector, hctx->vectorlen);

	FUNC4(&hctx->lock);

	FUNC0(&hctx->lock);

	FUNC10(canary0, hctx + 1, sizeof(canary0));
	FUNC11(hctx, 0, sizeof(isc_hash_t));
	FUNC10(canary1, hctx + 1, sizeof(canary1));
	FUNC1(FUNC9(canary0, canary1, sizeof(canary0)) == 0);
	FUNC7(mctx, hctx, sizeof(isc_hash_t));
	FUNC6(&mctx);
}