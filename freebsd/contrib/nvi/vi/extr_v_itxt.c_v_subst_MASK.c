#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int32_t ;
struct TYPE_18__ {size_t cno; int /*<<< orphan*/  lno; } ;
struct TYPE_15__ {size_t cno; int /*<<< orphan*/  lno; } ;
struct TYPE_16__ {int count; TYPE_5__ m_stop; TYPE_12__ m_start; int /*<<< orphan*/  buffer; } ;
typedef  TYPE_1__ VICMD ;
struct TYPE_17__ {int /*<<< orphan*/  showmode; } ;
typedef  TYPE_2__ SCR ;
typedef  int /*<<< orphan*/  CHAR_T ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  OOBLNO ; 
 int /*<<< orphan*/  SM_CHANGE ; 
 int TXT_APPENDEOL ; 
 int TXT_EMARK ; 
 int TXT_OVERWRITE ; 
 int /*<<< orphan*/  VC_BUFFER ; 
 int /*<<< orphan*/  VC_C1SET ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_12__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,size_t*,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*,TYPE_1__*,TYPE_5__*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int
FUNC6(SCR *sp, VICMD *vp)
{
	size_t len;
	u_int32_t flags;
	int isempty;
	CHAR_T *p;

	flags = FUNC4(sp, vp, 0);
	sp->showmode = SM_CHANGE;

	if (FUNC3(sp, vp->m_start.lno, &p, &len, &isempty)) {
		if (!isempty)
			return (1);
		len = 0;
		FUNC1(TXT_APPENDEOL);
	} else {
		if (len == 0)
			FUNC1(TXT_APPENDEOL);
		FUNC1(TXT_EMARK | TXT_OVERWRITE);
	}

	vp->m_stop.lno = vp->m_start.lno;
	vp->m_stop.cno =
	    vp->m_start.cno + (FUNC0(vp, VC_C1SET) ? vp->count - 1 : 0);
	if (vp->m_stop.cno > len - 1)
		vp->m_stop.cno = len - 1;

	if (p != NULL && FUNC2(sp,
	    FUNC0(vp, VC_BUFFER) ? &vp->buffer : NULL,
	    &vp->m_start, &vp->m_stop, 0))
		return (1);

	return (FUNC5(sp, vp, &vp->m_stop, p, len, 0, OOBLNO, 1, flags));
}