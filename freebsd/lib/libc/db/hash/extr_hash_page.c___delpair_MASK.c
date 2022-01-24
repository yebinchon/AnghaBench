#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int16_t ;
struct TYPE_8__ {char* page; int /*<<< orphan*/  flags; } ;
struct TYPE_7__ {scalar_t__ BSIZE; int cndx; int /*<<< orphan*/  NKEYS; } ;
typedef  TYPE_1__ HTAB ;
typedef  TYPE_2__ BUFHEAD ;

/* Variables and functions */
 int /*<<< orphan*/  BUF_MOD ; 
 scalar_t__ FUNC0 (scalar_t__*) ; 
 scalar_t__ OVFLPAGE ; 
 scalar_t__ REAL_KEY ; 
 int FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,scalar_t__) ; 

int
FUNC3(HTAB *hashp, BUFHEAD *bufp, int ndx)
{
	u_int16_t *bp, newoff, pairlen;
	int n;

	bp = (u_int16_t *)bufp->page;
	n = bp[0];

	if (bp[ndx + 1] < REAL_KEY)
		return (FUNC1(hashp, bufp));
	if (ndx != 1)
		newoff = bp[ndx - 1];
	else
		newoff = hashp->BSIZE;
	pairlen = newoff - bp[ndx + 1];

	if (ndx != (n - 1)) {
		/* Hard Case -- need to shuffle keys */
		int i;
		char *src = bufp->page + (int)FUNC0(bp);
		char *dst = src + (int)pairlen;
		FUNC2(dst, src, bp[ndx + 1] - FUNC0(bp));

		/* Now adjust the pointers */
		for (i = ndx + 2; i <= n; i += 2) {
			if (bp[i + 1] == OVFLPAGE) {
				bp[i - 2] = bp[i];
				bp[i - 1] = bp[i + 1];
			} else {
				bp[i - 2] = bp[i] + pairlen;
				bp[i - 1] = bp[i + 1] + pairlen;
			}
		}
		if (ndx == hashp->cndx) {
			/*
			 * We just removed pair we were "pointing" to.
			 * By moving back the cndx we ensure subsequent
			 * hash_seq() calls won't skip over any entries.
			 */
			hashp->cndx -= 2;
		}
	}
	/* Finally adjust the page data */
	bp[n] = FUNC0(bp) + pairlen;
	bp[n - 1] = bp[n + 1] + pairlen + 2 * sizeof(u_int16_t);
	bp[0] = n - 2;
	hashp->NKEYS--;

	bufp->flags |= BUF_MOD;
	return (0);
}