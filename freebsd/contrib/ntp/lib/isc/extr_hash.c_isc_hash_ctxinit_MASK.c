#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pr ;
typedef  int /*<<< orphan*/  isc_uint32_t ;
typedef  scalar_t__ isc_result_t ;
struct TYPE_3__ {scalar_t__ initialized; unsigned int vectorlen; int /*<<< orphan*/  lock; scalar_t__ rndvector; scalar_t__ entropy; } ;
typedef  TYPE_1__ isc_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ISC_R_SUCCESS ; 
 scalar_t__ ISC_TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ *,unsigned int) ; 

void
FUNC6(isc_hash_t *hctx) {
	FUNC1(&hctx->lock);

	if (hctx->initialized == ISC_TRUE)
		goto out;

	if (hctx->entropy) {
#ifdef BIND9
		isc_result_t result;

		result = isc_entropy_getdata(hctx->entropy,
					     hctx->rndvector, hctx->vectorlen,
					     NULL, 0);
		INSIST(result == ISC_R_SUCCESS);
#else
		FUNC0(0);
#endif
	} else {
		isc_uint32_t pr;
		unsigned int i, copylen;
		unsigned char *p;

		p = (unsigned char *)hctx->rndvector;
		for (i = 0; i < hctx->vectorlen; i += copylen, p += copylen) {
			FUNC4(&pr);
			if (i + sizeof(pr) <= hctx->vectorlen)
				copylen = sizeof(pr);
			else
				copylen = hctx->vectorlen - i;

			FUNC5(p, &pr, copylen);
		}
		FUNC0(p == (unsigned char *)hctx->rndvector +
		       hctx->vectorlen);
	}

	hctx->initialized = ISC_TRUE;

 out:
	FUNC2(&hctx->lock);
}