#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int16_t ;
struct TYPE_15__ {char* page; int /*<<< orphan*/  flags; } ;
struct TYPE_14__ {int NKEYS; int MAX_BUCKET; int FFACTOR; } ;
typedef  TYPE_1__ HTAB ;
typedef  int /*<<< orphan*/  DBT ;
typedef  TYPE_2__ BUFHEAD ;

/* Variables and functions */
 int /*<<< orphan*/  BUF_MOD ; 
 scalar_t__ FUNC0 (size_t*) ; 
 size_t FULL_KEY_DATA ; 
 size_t OVFLPAGE ; 
 scalar_t__ FUNC1 (size_t*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 size_t REAL_KEY ; 
 TYPE_2__* FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC5 (TYPE_1__*) ; 
 TYPE_2__* FUNC6 (TYPE_1__*,size_t,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (size_t*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

int
FUNC9(HTAB *hashp, BUFHEAD *bufp, const DBT *key, const DBT *val)
{
	u_int16_t *bp, *sop;
	int do_expand;

	bp = (u_int16_t *)bufp->page;
	do_expand = 0;
	while (bp[0] && (bp[2] < REAL_KEY || bp[bp[0]] < REAL_KEY))
		/* Exception case */
		if (bp[2] == FULL_KEY_DATA && bp[0] == 2)
			/* This is the last page of a big key/data pair
			   and we need to add another page */
			break;
		else if (bp[2] < REAL_KEY && bp[bp[0]] != OVFLPAGE) {
			bufp = FUNC6(hashp, bp[bp[0] - 1], bufp, 0);
			if (!bufp)
				return (-1);
			bp = (u_int16_t *)bufp->page;
		} else if (bp[bp[0]] != OVFLPAGE) {
			/* Short key/data pairs, no more pages */
			break;
		} else {
			/* Try to squeeze key on this page */
			if (bp[2] >= REAL_KEY &&
			    FUNC0(bp) >= FUNC2(key, val)) {
				FUNC8(bp, key, val);
				goto stats;
			} else {
				bufp = FUNC6(hashp, bp[bp[0] - 1], bufp, 0);
				if (!bufp)
					return (-1);
				bp = (u_int16_t *)bufp->page;
			}
		}

	if (FUNC1(bp, key, val))
		FUNC7(bufp->page, key, val);
	else {
		do_expand = 1;
		bufp = FUNC3(hashp, bufp);
		if (!bufp)
			return (-1);
		sop = (u_int16_t *)bufp->page;

		if (FUNC1(sop, key, val))
			FUNC7((char *)sop, key, val);
		else
			if (FUNC4(hashp, bufp, key, val))
				return (-1);
	}
stats:
	bufp->flags |= BUF_MOD;
	/*
	 * If the average number of keys per bucket exceeds the fill factor,
	 * expand the table.
	 */
	hashp->NKEYS++;
	if (do_expand ||
	    (hashp->NKEYS / (hashp->MAX_BUCKET + 1) > hashp->FFACTOR))
		return (FUNC5(hashp));
	return (0);
}