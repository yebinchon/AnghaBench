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
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int u_char ;
typedef  scalar_t__ pgno_t ;
typedef  size_t indx_t ;
struct TYPE_5__ {int flags; int pgno; int prevpg; int nextpg; int /*<<< orphan*/  upper; int /*<<< orphan*/  lower; int /*<<< orphan*/ * linp; } ;
typedef  TYPE_1__ PAGE ;
typedef  int /*<<< orphan*/  BTREE ;

/* Variables and functions */
 int /*<<< orphan*/  B_NEEDSWAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,size_t) ; 
 scalar_t__ FUNC2 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 size_t FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int P_BIGDATA ; 
 int P_BIGKEY ; 
 int P_BINTERNAL ; 
 int P_BLEAF ; 
 scalar_t__ P_META ; 
 int P_TYPE ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 

void
FUNC8(void *t, pgno_t pg, void *pp)
{
	PAGE *h;
	indx_t i, top;
	u_char flags;
	char *p;

	if (!FUNC0(((BTREE *)t), B_NEEDSWAP))
		return;
	if (pg == P_META) {
		FUNC7(pp);
		return;
	}

	h = pp;
	top = FUNC5(h);
	if ((h->flags & P_TYPE) == P_BINTERNAL)
		for (i = 0; i < top; i++) {
			p = (char *)FUNC1(h, i);
			FUNC6(p);
			p += sizeof(u_int32_t);
			FUNC6(p);
			p += sizeof(pgno_t);
			if (*(u_char *)p & P_BIGKEY) {
				p += sizeof(u_char);
				FUNC6(p);
				p += sizeof(pgno_t);
				FUNC6(p);
			}
			FUNC3(h->linp[i]);
		}
	else if ((h->flags & P_TYPE) == P_BLEAF)
		for (i = 0; i < top; i++) {
			p = (char *)FUNC2(h, i);
			FUNC6(p);
			p += sizeof(u_int32_t);
			FUNC6(p);
			p += sizeof(u_int32_t);
			flags = *(u_char *)p;
			if (flags & (P_BIGKEY | P_BIGDATA)) {
				p += sizeof(u_char);
				if (flags & P_BIGKEY) {
					FUNC6(p);
					p += sizeof(pgno_t);
					FUNC6(p);
				}
				if (flags & P_BIGDATA) {
					p += sizeof(u_int32_t);
					FUNC6(p);
					p += sizeof(pgno_t);
					FUNC6(p);
				}
			}
			FUNC3(h->linp[i]);
		}

	FUNC4(h->pgno);
	FUNC4(h->prevpg);
	FUNC4(h->nextpg);
	FUNC4(h->flags);
	FUNC3(h->lower);
	FUNC3(h->upper);
}