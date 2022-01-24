#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * bitmaps; int /*<<< orphan*/ * spares; int /*<<< orphan*/  h_charkey; int /*<<< orphan*/  hdrpages; int /*<<< orphan*/  nkeys; int /*<<< orphan*/  ffactor; int /*<<< orphan*/  low_mask; int /*<<< orphan*/  high_mask; int /*<<< orphan*/  max_bucket; int /*<<< orphan*/  last_freed; int /*<<< orphan*/  ovfl_point; int /*<<< orphan*/  sshift; int /*<<< orphan*/  ssize; int /*<<< orphan*/  dsize; int /*<<< orphan*/  bshift; int /*<<< orphan*/  bsize; int /*<<< orphan*/  lorder; int /*<<< orphan*/  version; int /*<<< orphan*/  magic; } ;
struct TYPE_4__ {TYPE_2__ hdr; } ;
typedef  TYPE_1__ HTAB ;
typedef  TYPE_2__ HASHHDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int NCACHED ; 

__attribute__((used)) static void
FUNC2(HTAB *hashp)
{
	HASHHDR *hdrp;
	int i;

	hdrp = &hashp->hdr;

	FUNC1(hdrp->magic);
	FUNC1(hdrp->version);
	FUNC1(hdrp->lorder);
	FUNC1(hdrp->bsize);
	FUNC1(hdrp->bshift);
	FUNC1(hdrp->dsize);
	FUNC1(hdrp->ssize);
	FUNC1(hdrp->sshift);
	FUNC1(hdrp->ovfl_point);
	FUNC1(hdrp->last_freed);
	FUNC1(hdrp->max_bucket);
	FUNC1(hdrp->high_mask);
	FUNC1(hdrp->low_mask);
	FUNC1(hdrp->ffactor);
	FUNC1(hdrp->nkeys);
	FUNC1(hdrp->hdrpages);
	FUNC1(hdrp->h_charkey);
	for (i = 0; i < NCACHED; i++) {
		FUNC1(hdrp->spares[i]);
		FUNC0(hdrp->bitmaps[i]);
	}
}