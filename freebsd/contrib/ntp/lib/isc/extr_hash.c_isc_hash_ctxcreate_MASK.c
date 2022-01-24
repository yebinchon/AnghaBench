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
typedef  scalar_t__ isc_result_t ;
typedef  int /*<<< orphan*/  isc_mem_t ;
struct TYPE_6__ {unsigned int limit; size_t vectorlen; int /*<<< orphan*/  lock; int /*<<< orphan*/ * entropy; struct TYPE_6__* rndvector; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  initialized; int /*<<< orphan*/ * mctx; int /*<<< orphan*/  magic; } ;
typedef  TYPE_1__ isc_hash_t ;
typedef  int /*<<< orphan*/  isc_entropy_t ;
typedef  TYPE_1__ hash_random_t ;
typedef  unsigned int hash_accum_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HASH_MAGIC ; 
 int /*<<< orphan*/  ISC_FALSE ; 
 scalar_t__ ISC_R_NOMEMORY ; 
 scalar_t__ ISC_R_RANGE ; 
 scalar_t__ ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,size_t) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 

isc_result_t
FUNC9(isc_mem_t *mctx, isc_entropy_t *entropy,
		   unsigned int limit, isc_hash_t **hctxp)
{
	isc_result_t result;
	isc_hash_t *hctx;
	size_t vlen;
	hash_random_t *rv;
	hash_accum_t overflow_limit;

	FUNC1(mctx != NULL);
	FUNC1(hctxp != NULL && *hctxp == NULL);

	/*
	 * Overflow check.  Since our implementation only does a modulo
	 * operation at the last stage of hash calculation, the accumulator
	 * must not overflow.
	 */
	overflow_limit =
		1 << (((sizeof(hash_accum_t) - sizeof(hash_random_t))) * 8);
	if (overflow_limit < (limit + 1) * 0xff)
		return (ISC_R_RANGE);

	hctx = FUNC5(mctx, sizeof(isc_hash_t));
	if (hctx == NULL)
		return (ISC_R_NOMEMORY);

	vlen = sizeof(hash_random_t) * (limit + 1);
	rv = FUNC5(mctx, vlen);
	if (rv == NULL) {
		result = ISC_R_NOMEMORY;
		goto errout;
	}

	/*
	 * We need a lock.
	 */
	result = FUNC7(&hctx->lock);
	if (result != ISC_R_SUCCESS)
		goto errout;

	/*
	 * From here down, no failures will/can occur.
	 */
	hctx->magic = HASH_MAGIC;
	hctx->mctx = NULL;
	FUNC4(mctx, &hctx->mctx);
	hctx->initialized = ISC_FALSE;
	result = FUNC8(&hctx->refcnt, 1);
	if (result != ISC_R_SUCCESS)
		goto cleanup_lock;
	hctx->entropy = NULL;
	hctx->limit = limit;
	hctx->vectorlen = vlen;
	hctx->rndvector = rv;

#ifdef BIND9
	if (entropy != NULL)
		isc_entropy_attach(entropy, &hctx->entropy);
#else
	FUNC2(entropy);
#endif

	*hctxp = hctx;
	return (ISC_R_SUCCESS);

 cleanup_lock:
	FUNC0(&hctx->lock);
 errout:
	FUNC6(mctx, hctx, sizeof(isc_hash_t));
	if (rv != NULL)
		FUNC6(mctx, rv, vlen);

	return (result);
}