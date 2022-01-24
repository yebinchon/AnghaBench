#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int type; } ;
typedef  TYPE_2__ isc_entropysource_t ;
struct TYPE_12__ {int entropy; int pseudo; } ;
struct TYPE_14__ {int initialized; unsigned int nsources; int /*<<< orphan*/  sources; TYPE_2__* nextsource; TYPE_1__ pool; } ;
typedef  TYPE_3__ isc_entropy_t ;
typedef  int /*<<< orphan*/  isc_boolean_t ;

/* Variables and functions */
 int ENTROPY_SOURCETYPE_CALLBACK ; 
#define  ENTROPY_SOURCETYPE_FILE 129 
#define  ENTROPY_SOURCETYPE_USOCKET 128 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (unsigned int,int) ; 
 unsigned int FUNC3 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int RND_POOLBITS ; 
 int THRESHOLD_BITS ; 
 int FUNC5 (TYPE_3__*) ; 
 unsigned int FUNC6 (TYPE_2__*,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (TYPE_2__*,unsigned int) ; 
 unsigned int FUNC8 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  link ; 
 int FUNC9 (TYPE_3__*) ; 

__attribute__((used)) static void
FUNC10(isc_entropy_t *ent, unsigned int desired, isc_boolean_t blocking) {
	unsigned int added;
	unsigned int remaining;
	unsigned int needed;
	unsigned int nsource;
	isc_entropysource_t *source;

	FUNC4(FUNC5(ent));

	needed = desired;

	/*
	 * This logic is a little strange, so an explanation is in order.
	 *
	 * If needed is 0, it means we are being asked to "fill to whatever
	 * we think is best."  This means that if we have at least a
	 * partially full pool (say, > 1/4th of the pool) we probably don't
	 * need to add anything.
	 *
	 * Also, we will check to see if the "pseudo" count is too high.
	 * If it is, try to mix in better data.  Too high is currently
	 * defined as 1/4th of the pool.
	 *
	 * Next, if we are asked to add a specific bit of entropy, make
	 * certain that we will do so.  Clamp how much we try to add to
	 * (DIGEST_SIZE * 8 < needed < POOLBITS - entropy).
	 *
	 * Note that if we are in a blocking mode, we will only try to
	 * get as much data as we need, not as much as we might want
	 * to build up.
	 */
	if (needed == 0) {
		FUNC4(!blocking);

		if ((ent->pool.entropy >= RND_POOLBITS / 4)
		    && (ent->pool.pseudo <= RND_POOLBITS / 4))
			return;

		needed = THRESHOLD_BITS * 4;
	} else {
		needed = FUNC2(needed, THRESHOLD_BITS);
		needed = FUNC3(needed, RND_POOLBITS);
	}

	/*
	 * In any case, clamp how much we need to how much we can add.
	 */
	needed = FUNC3(needed, RND_POOLBITS - ent->pool.entropy);

	/*
	 * But wait!  If we're not yet initialized, we need at least
	 *	THRESHOLD_BITS
	 * of randomness.
	 */
	if (ent->initialized < THRESHOLD_BITS)
		needed = FUNC2(needed, THRESHOLD_BITS - ent->initialized);

	/*
	 * Poll each file source to see if we can read anything useful from
	 * it.  XXXMLG When where are multiple sources, we should keep a
	 * record of which one we last used so we can start from it (or the
	 * next one) to avoid letting some sources build up entropy while
	 * others are always drained.
	 */

	added = 0;
	remaining = needed;
	if (ent->nextsource == NULL) {
		ent->nextsource = FUNC0(ent->sources);
		if (ent->nextsource == NULL)
			return;
	}
	source = ent->nextsource;
 again_file:
	for (nsource = 0; nsource < ent->nsources; nsource++) {
		unsigned int got;

		if (remaining == 0)
			break;

		got = 0;

		switch ( source->type ) {
		case ENTROPY_SOURCETYPE_FILE:
			got = FUNC7(source, remaining);
			break;

		case ENTROPY_SOURCETYPE_USOCKET:
			got = FUNC8(source, remaining);
			break;
		}

		added += got;

		remaining -= FUNC3(remaining, got);

		source = FUNC1(source, link);
		if (source == NULL)
			source = FUNC0(ent->sources);
	}
	ent->nextsource = source;

	if (blocking && remaining != 0) {
		int fds;

		fds = FUNC9(ent);
		if (fds > 0)
			goto again_file;
	}

	/*
	 * Here, if there are bits remaining to be had and we can block,
	 * check to see if we have a callback source.  If so, call them.
	 */
	source = FUNC0(ent->sources);
	while ((remaining != 0) && (source != NULL)) {
		unsigned int got;

		got = 0;

		if (source->type == ENTROPY_SOURCETYPE_CALLBACK)
			got = FUNC6(source, remaining, blocking);

		added += got;
		remaining -= FUNC3(remaining, got);

		if (added >= needed)
			break;

		source = FUNC1(source, link);
	}

	/*
	 * Mark as initialized if we've added enough data.
	 */
	if (ent->initialized < THRESHOLD_BITS)
		ent->initialized += added;
}