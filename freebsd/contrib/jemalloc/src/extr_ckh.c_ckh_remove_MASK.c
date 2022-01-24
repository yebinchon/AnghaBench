#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsd_t ;
struct TYPE_7__ {int count; int lg_curbuckets; int lg_minbuckets; TYPE_1__* tab; } ;
typedef  TYPE_2__ ckh_t ;
struct TYPE_6__ {int /*<<< orphan*/ * data; int /*<<< orphan*/ * key; } ;

/* Variables and functions */
 int LG_CKH_BUCKET_CELLS ; 
 size_t SIZE_T_MAX ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (TYPE_2__*,void const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 

bool
FUNC4(tsd_t *tsd, ckh_t *ckh, const void *searchkey, void **key,
    void **data) {
	size_t cell;

	FUNC1(ckh != NULL);

	cell = FUNC2(ckh, searchkey);
	if (cell != SIZE_T_MAX) {
		if (key != NULL) {
			*key = (void *)ckh->tab[cell].key;
		}
		if (data != NULL) {
			*data = (void *)ckh->tab[cell].data;
		}
		ckh->tab[cell].key = NULL;
		ckh->tab[cell].data = NULL; /* Not necessary. */

		ckh->count--;
		/* Try to halve the table if it is less than 1/4 full. */
		if (ckh->count < (FUNC0(1) << (ckh->lg_curbuckets
		    + LG_CKH_BUCKET_CELLS - 2)) && ckh->lg_curbuckets
		    > ckh->lg_minbuckets) {
			/* Ignore error due to OOM. */
			FUNC3(tsd, ckh);
		}

		return false;
	}

	return true;
}