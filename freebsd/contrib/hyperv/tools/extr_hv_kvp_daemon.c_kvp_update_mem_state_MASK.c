#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct kvp_record {int dummy; } ;
struct TYPE_2__ {int num_blocks; size_t num_records; struct kvp_record* records; int /*<<< orphan*/  fname; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int ENTRIES_PER_BLOCK ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (struct kvp_record*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 TYPE_1__* kvp_pools ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 struct kvp_record* FUNC9 (struct kvp_record*,int) ; 

__attribute__((used)) static void
FUNC10(int pool)
{
	FILE *filep;
	size_t records_read = 0;
	struct kvp_record *record = kvp_pools[pool].records;
	struct kvp_record *readp;
	int num_blocks = kvp_pools[pool].num_blocks;
	int alloc_unit = sizeof(struct kvp_record) * ENTRIES_PER_BLOCK;

	FUNC7(pool);

	filep = FUNC5(kvp_pools[pool].fname, "r");
	if (!filep) {
		FUNC8(pool);
		FUNC0(LOG_ERR, "Failed to open file, pool: %d\n", pool);
		FUNC1(EXIT_FAILURE);
	}
	for ( ; ; )
	{
		readp = &record[records_read];
		records_read += FUNC6(readp, sizeof(struct kvp_record),
			ENTRIES_PER_BLOCK * num_blocks,
			filep);

		if (FUNC4(filep)) {
			FUNC0(LOG_ERR, "Failed to read file, pool: %d\n", pool);
			FUNC1(EXIT_FAILURE);
		}

		if (!FUNC3(filep)) {
			/*
			 * Have more data to read. Expand the memory.
			 */
			num_blocks++;
			record = FUNC9(record, alloc_unit * num_blocks);

			if (record == NULL) {
				FUNC0(LOG_ERR, "malloc failed\n");
				FUNC1(EXIT_FAILURE);
			}
			continue;
		}
		break;
	}

	kvp_pools[pool].num_blocks = num_blocks;
	kvp_pools[pool].records = record;
	kvp_pools[pool].num_records = records_read;

	FUNC2(filep);
	FUNC8(pool);
}