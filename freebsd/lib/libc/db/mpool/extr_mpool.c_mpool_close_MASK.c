#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  lqh; } ;
typedef  TYPE_1__ MPOOL ;
typedef  TYPE_1__ BKT ;

/* Variables and functions */
 int RET_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  q ; 

int
FUNC4(MPOOL *mp)
{
	BKT *bp;

	/* Free up any space allocated to the lru pages. */
	while (!FUNC0(&mp->lqh)) {
		bp = FUNC1(&mp->lqh);
		FUNC2(&mp->lqh, bp, q);
		FUNC3(bp);
	}

	/* Free the MPOOL cookie. */
	FUNC3(mp);
	return (RET_SUCCESS);
}