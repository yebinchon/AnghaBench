#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct TYPE_7__ {int cno; int /*<<< orphan*/  lno; } ;
struct TYPE_8__ {scalar_t__ character; int count; TYPE_1__ m_stop; TYPE_1__ m_start; TYPE_1__ m_final; } ;
typedef  TYPE_2__ VICMD ;
struct TYPE_9__ {int /*<<< orphan*/  csearchdir; scalar_t__ lastckey; } ;
typedef  int /*<<< orphan*/  SCR ;
typedef  scalar_t__ CHAR_T ;
typedef  scalar_t__ ARG_CHAR_T ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  VC_C1SET ; 
 int /*<<< orphan*/  VC_ISDOT ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__**,size_t*,int*) ; 
 int /*<<< orphan*/  fSEARCH ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 

int
FUNC5(SCR *sp, VICMD *vp)
{
	size_t len;
	u_long cnt;
	int isempty;
	ARG_CHAR_T key;
	CHAR_T *endp, *p, *startp;

	/*
	 * !!!
	 * If it's a dot command, it doesn't reset the key for which we're
	 * searching, e.g. in "df1|f2|.|;", the ';' searches for a '2'.
	 */
	key = vp->character;
	if (!FUNC0(vp, VC_ISDOT))
		FUNC2(sp)->lastckey = key;
	FUNC2(sp)->csearchdir = fSEARCH;

	if (FUNC3(sp, vp->m_start.lno, &p, &len, &isempty)) {
		if (isempty)
			goto empty;
		return (1);
	}

	if (len == 0) {
empty:		FUNC4(sp, key);
		return (1);
	}

	endp = (startp = p) + len;
	p += vp->m_start.cno;
	for (cnt = FUNC0(vp, VC_C1SET) ? vp->count : 1; cnt--;) {
		while (++p < endp && *p != key);
		if (p == endp) {
			FUNC4(sp, key);
			return (1);
		}
	}

	vp->m_stop.cno = p - startp;

	/*
	 * Non-motion commands move to the end of the range.
	 * Delete and yank stay at the start, ignore others.
	 */
	vp->m_final = FUNC1(vp) ? vp->m_start : vp->m_stop;
	return (0);
}