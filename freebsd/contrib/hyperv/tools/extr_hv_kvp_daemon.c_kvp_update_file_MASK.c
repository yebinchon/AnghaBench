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
struct TYPE_2__ {int /*<<< orphan*/  num_records; int /*<<< orphan*/  records; int /*<<< orphan*/  fname; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*) ; 
 size_t FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 TYPE_1__* kvp_pools ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void
FUNC8(int pool)
{
	FILE *filep;
	size_t bytes_written;

	FUNC6(pool);

	filep = FUNC4(kvp_pools[pool].fname, "w");
	if (!filep) {
		FUNC7(pool);
		FUNC0(LOG_ERR, "Failed to open file, pool: %d\n", pool);
		FUNC1(EXIT_FAILURE);
	}

	bytes_written = FUNC5(kvp_pools[pool].records,
		sizeof(struct kvp_record),
		kvp_pools[pool].num_records, filep);

	if (FUNC3(filep) || FUNC2(filep)) {
		FUNC7(pool);
		FUNC0(LOG_ERR, "Failed to write file, pool: %d\n", pool);
		FUNC1(EXIT_FAILURE);
	}

	FUNC7(pool);
}