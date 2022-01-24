#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  zap_t ;
typedef  int /*<<< orphan*/  zap_stats_t ;
typedef  int /*<<< orphan*/  zap_leaf_t ;
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  RW_READER ; 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(zap_t *zap, uint64_t *tbl, int len, zap_stats_t *zs)
{
	uint64_t lastblk = 0;

	/*
	 * NB: if a leaf has more pointers than an entire ptrtbl block
	 * can hold, then it'll be accounted for more than once, since
	 * we won't have lastblk.
	 */
	for (int i = 0; i < len; i++) {
		zap_leaf_t *l;

		if (tbl[i] == lastblk)
			continue;
		lastblk = tbl[i];

		int err = FUNC0(zap, tbl[i], NULL, RW_READER, &l);
		if (err == 0) {
			FUNC1(zap, l, zs);
			FUNC2(l);
		}
	}
}