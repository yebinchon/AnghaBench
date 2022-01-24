#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned char isc_uint8_t ;
typedef  int isc_uint32_t ;
typedef  int /*<<< orphan*/  isc_sha1_t ;
typedef  int /*<<< orphan*/  isc_result_t ;
struct TYPE_11__ {unsigned int entropy; scalar_t__ pool; } ;
struct TYPE_12__ {unsigned int initialized; int /*<<< orphan*/  lock; TYPE_1__ pool; } ;
typedef  TYPE_2__ isc_entropy_t ;
typedef  scalar_t__ isc_boolean_t ;
typedef  int /*<<< orphan*/  digest ;

/* Variables and functions */
 unsigned int ISC_ENTROPY_BLOCKING ; 
 unsigned int ISC_ENTROPY_GOODONLY ; 
 unsigned int ISC_ENTROPY_PARTIAL ; 
 scalar_t__ ISC_FALSE ; 
 unsigned int FUNC0 (int,int) ; 
 int FUNC1 (int,unsigned int) ; 
 int /*<<< orphan*/  ISC_R_NOENTROPY ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int ISC_SHA1_DIGESTLENGTH ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 unsigned int RND_ENTROPY_THRESHOLD ; 
 int /*<<< orphan*/  RND_POOLBYTES ; 
 unsigned int THRESHOLD_BITS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int) ; 

isc_result_t
FUNC17(isc_entropy_t *ent, void *data, unsigned int length,
		    unsigned int *returned, unsigned int flags)
{
	unsigned int i;
	isc_sha1_t hash;
	unsigned char digest[ISC_SHA1_DIGESTLENGTH];
	isc_uint32_t remain, deltae, count, total;
	isc_uint8_t *buf;
	isc_boolean_t goodonly, partial, blocking;

	FUNC4(FUNC6(ent));
	FUNC4(data != NULL);
	FUNC4(length > 0);

	goodonly = FUNC2((flags & ISC_ENTROPY_GOODONLY) != 0);
	partial = FUNC2((flags & ISC_ENTROPY_PARTIAL) != 0);
	blocking = FUNC2((flags & ISC_ENTROPY_BLOCKING) != 0);

	FUNC4(!partial || returned != NULL);

	FUNC3(&ent->lock);

	remain = length;
	buf = data;
	total = 0;
	while (remain != 0) {
		count = FUNC1(remain, RND_ENTROPY_THRESHOLD);

		/*
		 * If we are extracting good data only, make certain we
		 * have enough data in our pool for this pass.  If we don't,
		 * get some, and fail if we can't, and partial returns
		 * are not ok.
		 */
		if (goodonly) {
			unsigned int fillcount;

			fillcount = FUNC0(remain * 8, count * 8);

			/*
			 * If, however, we have at least THRESHOLD_BITS
			 * of entropy in the pool, don't block here.  It is
			 * better to drain the pool once in a while and
			 * then refill it than it is to constantly keep the
			 * pool full.
			 */
			if (ent->pool.entropy >= THRESHOLD_BITS)
				FUNC10(ent, fillcount, ISC_FALSE);
			else
				FUNC10(ent, fillcount, blocking);

			/*
			 * Verify that we got enough entropy to do one
			 * extraction.  If we didn't, bail.
			 */
			if (ent->pool.entropy < THRESHOLD_BITS) {
				if (!partial)
					goto zeroize;
				else
					goto partial_output;
			}
		} else {
			/*
			 * If we've extracted half our pool size in bits
			 * since the last refresh, try to refresh here.
			 */
			if (ent->initialized < THRESHOLD_BITS)
				FUNC10(ent, THRESHOLD_BITS, blocking);
			else
				FUNC10(ent, 0, ISC_FALSE);

			/*
			 * If we've not initialized with enough good random
			 * data, seed with our crappy code.
			 */
			if (ent->initialized < THRESHOLD_BITS)
				FUNC15(ent);
		}

		FUNC12(&hash);
		FUNC13(&hash, (void *)(ent->pool.pool),
				RND_POOLBYTES);
		FUNC11(&hash, digest);

		/*
		 * Stir the extracted data (all of it) back into the pool.
		 */
		FUNC9(ent, digest, ISC_SHA1_DIGESTLENGTH, 0);

		for (i = 0; i < count; i++)
			buf[i] = digest[i] ^ digest[i + RND_ENTROPY_THRESHOLD];

		buf += count;
		remain -= count;

		deltae = count * 8;
		deltae = FUNC1(deltae, ent->pool.entropy);
		total += deltae;
		FUNC16(ent, deltae);
		FUNC8(ent, count * 8);
	}

 partial_output:
	FUNC14(digest, 0, sizeof(digest));

	if (returned != NULL)
		*returned = (length - remain);

	FUNC5(&ent->lock);

	return (ISC_R_SUCCESS);

 zeroize:
	/* put the entropy we almost extracted back */
	FUNC7(ent, total);
	FUNC14(data, 0, length);
	FUNC14(digest, 0, sizeof(digest));
	if (returned != NULL)
		*returned = 0;

	FUNC5(&ent->lock);

	return (ISC_R_NOENTROPY);
}