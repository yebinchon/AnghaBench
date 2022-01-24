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
typedef  size_t u_int32_t ;
typedef  scalar_t__ pgno_t ;
struct TYPE_7__ {int bt_psize; int /*<<< orphan*/  bt_mp; } ;
struct TYPE_6__ {scalar_t__ nextpg; } ;
typedef  TYPE_1__ PAGE ;
typedef  TYPE_2__ BTREE ;

/* Variables and functions */
 int BTDATAOFF ; 
 size_t FUNC0 (size_t,size_t) ; 
 scalar_t__ P_INVALID ; 
 int RET_ERROR ; 
 int RET_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*,char*,size_t) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (void*,size_t) ; 

int
FUNC6(BTREE *t, void *p, size_t *ssz, void **buf, size_t *bufsz)
{
	PAGE *h;
	pgno_t pg;
	size_t nb, plen;
	u_int32_t sz;

	FUNC2(&pg, p, sizeof(pgno_t));
	FUNC2(&sz, (char *)p + sizeof(pgno_t), sizeof(u_int32_t));
	*ssz = sz;

#ifdef DEBUG
	if (pg == P_INVALID || sz == 0)
		abort();
#endif
	/* Make the buffer bigger as necessary. */
	if (*bufsz < sz) {
		*buf = FUNC5(*buf, sz);
		if (*buf == NULL)
			return (RET_ERROR);
		*bufsz = sz;
	}

	/*
	 * Step through the linked list of pages, copying the data on each one
	 * into the buffer.  Never copy more than the data's length.
	 */
	plen = t->bt_psize - BTDATAOFF;
	for (p = *buf;; p = (char *)p + nb, pg = h->nextpg) {
		if ((h = FUNC3(t->bt_mp, pg, 0)) == NULL)
			return (RET_ERROR);

		nb = FUNC0(sz, plen);
		FUNC2(p, (char *)h + BTDATAOFF, nb);
		FUNC4(t->bt_mp, h, 0);

		if ((sz -= nb) == 0)
			break;
	}
	return (RET_SUCCESS);
}