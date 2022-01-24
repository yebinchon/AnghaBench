#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * bitmaps; int /*<<< orphan*/ * spares; int /*<<< orphan*/  h_charkey; int /*<<< orphan*/  hdrpages; int /*<<< orphan*/  nkeys; int /*<<< orphan*/  ffactor; int /*<<< orphan*/  low_mask; int /*<<< orphan*/  high_mask; int /*<<< orphan*/  max_bucket; int /*<<< orphan*/  last_freed; int /*<<< orphan*/  ovfl_point; int /*<<< orphan*/  sshift; int /*<<< orphan*/  ssize; int /*<<< orphan*/  dsize; int /*<<< orphan*/  bshift; int /*<<< orphan*/  bsize; int /*<<< orphan*/  lorder; int /*<<< orphan*/  version; int /*<<< orphan*/  magic; } ;
typedef  TYPE_1__ HASHHDR ;

/* Variables and functions */
 int NCACHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(HASHHDR *srcp, HASHHDR *destp)
{
	int i;

	FUNC1(srcp->magic, destp->magic);
	FUNC1(srcp->version, destp->version);
	FUNC1(srcp->lorder, destp->lorder);
	FUNC1(srcp->bsize, destp->bsize);
	FUNC1(srcp->bshift, destp->bshift);
	FUNC1(srcp->dsize, destp->dsize);
	FUNC1(srcp->ssize, destp->ssize);
	FUNC1(srcp->sshift, destp->sshift);
	FUNC1(srcp->ovfl_point, destp->ovfl_point);
	FUNC1(srcp->last_freed, destp->last_freed);
	FUNC1(srcp->max_bucket, destp->max_bucket);
	FUNC1(srcp->high_mask, destp->high_mask);
	FUNC1(srcp->low_mask, destp->low_mask);
	FUNC1(srcp->ffactor, destp->ffactor);
	FUNC1(srcp->nkeys, destp->nkeys);
	FUNC1(srcp->hdrpages, destp->hdrpages);
	FUNC1(srcp->h_charkey, destp->h_charkey);
	for (i = 0; i < NCACHED; i++) {
		FUNC1(srcp->spares[i], destp->spares[i]);
		FUNC0(srcp->bitmaps[i], destp->bitmaps[i]);
	}
}