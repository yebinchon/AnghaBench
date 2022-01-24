#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zap_leaf_t ;
struct zap_leaf_entry {scalar_t__ le_type; unsigned long long le_hash; } ;
typedef  scalar_t__ boolean_t ;
struct TYPE_3__ {int lh_prefix_len; int lh_prefix; int /*<<< orphan*/  lh_flags; } ;
struct TYPE_4__ {TYPE_1__ l_hdr; int /*<<< orphan*/  l_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHAIN_END ; 
 scalar_t__ ZAP_CHUNK_ENTRY ; 
 struct zap_leaf_entry* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ZLF_ENTRIES_CDSORTED ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC7(zap_leaf_t *l, zap_leaf_t *nl, boolean_t sort)
{
	int bit = 64 - 1 - FUNC3(l)->l_hdr.lh_prefix_len;

	/* set new prefix and prefix_len */
	FUNC3(l)->l_hdr.lh_prefix <<= 1;
	FUNC3(l)->l_hdr.lh_prefix_len++;
	FUNC3(nl)->l_hdr.lh_prefix =
	    FUNC3(l)->l_hdr.lh_prefix | 1;
	FUNC3(nl)->l_hdr.lh_prefix_len =
	    FUNC3(l)->l_hdr.lh_prefix_len;

	/* break existing hash chains */
	FUNC6(FUNC3(l)->l_hash, CHAIN_END,
	    2*FUNC1(l));

	if (sort)
		FUNC3(l)->l_hdr.lh_flags |= ZLF_ENTRIES_CDSORTED;

	/*
	 * Transfer entries whose hash bit 'bit' is set to nl; rehash
	 * the remaining entries
	 *
	 * NB: We could find entries via the hashtable instead. That
	 * would be O(hashents+numents) rather than O(numblks+numents),
	 * but this accesses memory more sequentially, and when we're
	 * called, the block is usually pretty full.
	 */
	for (int i = 0; i < FUNC2(l); i++) {
		struct zap_leaf_entry *le = FUNC0(l, i);
		if (le->le_type != ZAP_CHUNK_ENTRY)
			continue;

		if (le->le_hash & (1ULL << bit))
			FUNC5(l, i, nl);
		else
			(void) FUNC4(l, i);
	}
}