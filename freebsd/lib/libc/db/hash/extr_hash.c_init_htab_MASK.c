#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int FFACTOR; int* SPARES; int OVFL_POINT; int LAST_FREED; int MAX_BUCKET; int LOW_MASK; int HIGH_MASK; int HDRPAGES; int BSHIFT; int SGSIZE; int DSIZE; } ;
typedef  TYPE_1__ HTAB ;
typedef  int /*<<< orphan*/  HASHHDR ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int MINHDRSIZE ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int FUNC4 (TYPE_1__*,int) ; 

__attribute__((used)) static int
FUNC5(HTAB *hashp, int nelem)
{
	int nbuckets, nsegs, l2;

	/*
	 * Divide number of elements by the fill factor and determine a
	 * desired number of buckets.  Allocate space for the next greater
	 * power of two number of buckets.
	 */
	nelem = (nelem - 1) / hashp->FFACTOR + 1;

	l2 = FUNC3(FUNC0(nelem, 2));
	nbuckets = 1 << l2;

	hashp->SPARES[l2] = l2 + 1;
	hashp->SPARES[l2 + 1] = l2 + 1;
	hashp->OVFL_POINT = l2;
	hashp->LAST_FREED = 2;

	/* First bitmap page is at: splitpoint l2 page offset 1 */
	if (FUNC2(hashp, FUNC1(l2, 1), l2 + 1, 0))
		return (-1);

	hashp->MAX_BUCKET = hashp->LOW_MASK = nbuckets - 1;
	hashp->HIGH_MASK = (nbuckets << 1) - 1;
	hashp->HDRPAGES = ((FUNC0(sizeof(HASHHDR), MINHDRSIZE) - 1) >>
	    hashp->BSHIFT) + 1;

	nsegs = (nbuckets - 1) / hashp->SGSIZE + 1;
	nsegs = 1 << FUNC3(nsegs);

	if (nsegs > hashp->DSIZE)
		hashp->DSIZE = nsegs;
	return (FUNC4(hashp, nsegs));
}