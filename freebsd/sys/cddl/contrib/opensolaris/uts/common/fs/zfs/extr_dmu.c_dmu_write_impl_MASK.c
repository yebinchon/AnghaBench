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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_6__ {int db_offset; int db_size; scalar_t__ db_data; } ;
typedef  TYPE_1__ dmu_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (void const*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(dmu_buf_t **dbp, int numbufs, uint64_t offset, uint64_t size,
    const void *buf, dmu_tx_t *tx)
{
	int i;

	for (i = 0; i < numbufs; i++) {
		int tocpy;
		int bufoff;
		dmu_buf_t *db = dbp[i];

		FUNC0(size > 0);

		bufoff = offset - db->db_offset;
		tocpy = (int)FUNC1(db->db_size - bufoff, size);

		FUNC0(i == 0 || i == numbufs-1 || tocpy == db->db_size);

		if (tocpy == db->db_size)
			FUNC5(db, tx);
		else
			FUNC4(db, tx);

		FUNC2(buf, (char *)db->db_data + bufoff, tocpy);

		if (tocpy == db->db_size)
			FUNC3(db, tx);

		offset += tocpy;
		size -= tocpy;
		buf = (char *)buf + tocpy;
	}
}