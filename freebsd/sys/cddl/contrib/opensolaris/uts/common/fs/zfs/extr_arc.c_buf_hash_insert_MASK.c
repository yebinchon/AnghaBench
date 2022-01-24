#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  kmutex_t ;
struct TYPE_8__ {scalar_t__ b_birth; struct TYPE_8__* b_hash_next; int /*<<< orphan*/  b_dva; int /*<<< orphan*/  b_spa; } ;
typedef  TYPE_1__ arc_buf_hdr_t ;
struct TYPE_9__ {TYPE_1__** ht_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ARC_FLAG_IN_HASH_TABLE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 size_t FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arcstat_hash_chain_max ; 
 int /*<<< orphan*/  arcstat_hash_chains ; 
 int /*<<< orphan*/  arcstat_hash_collisions ; 
 int /*<<< orphan*/  arcstat_hash_elements ; 
 TYPE_2__ buf_hash_table ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static arc_buf_hdr_t *
FUNC12(arc_buf_hdr_t *hdr, kmutex_t **lockp)
{
	uint64_t idx = FUNC4(hdr->b_spa, &hdr->b_dva, hdr->b_birth);
	kmutex_t *hash_lock = FUNC5(idx);
	arc_buf_hdr_t *fhdr;
	uint32_t i;

	FUNC3(!FUNC6(&hdr->b_dva));
	FUNC3(hdr->b_birth != 0);
	FUNC3(!FUNC8(hdr));

	if (lockp != NULL) {
		*lockp = hash_lock;
		FUNC11(hash_lock);
	} else {
		FUNC3(FUNC9(hash_lock));
	}

	for (fhdr = buf_hash_table.ht_table[idx], i = 0; fhdr != NULL;
	    fhdr = fhdr->b_hash_next, i++) {
		if (FUNC7(hdr->b_spa, &hdr->b_dva, hdr->b_birth, fhdr))
			return (fhdr);
	}

	hdr->b_hash_next = buf_hash_table.ht_table[idx];
	buf_hash_table.ht_table[idx] = hdr;
	FUNC10(hdr, ARC_FLAG_IN_HASH_TABLE);

	/* collect some hash table performance data */
	if (i > 0) {
		FUNC0(arcstat_hash_collisions);
		if (i == 1)
			FUNC0(arcstat_hash_chains);

		FUNC1(arcstat_hash_chain_max, i);
	}

	FUNC0(arcstat_hash_elements);
	FUNC2(arcstat_hash_elements);

	return (NULL);
}