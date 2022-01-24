#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int32_t ;
struct TYPE_12__ {int /*<<< orphan*/  lno; } ;
struct TYPE_13__ {int count; TYPE_1__ m_start; } ;
typedef  TYPE_2__ VICMD ;
struct TYPE_14__ {int /*<<< orphan*/  lno; int /*<<< orphan*/  showmode; } ;
typedef  TYPE_3__ SCR ;
typedef  int /*<<< orphan*/  CHAR_T ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OOBLNO ; 
 int /*<<< orphan*/  SM_INSERT ; 
 int /*<<< orphan*/  TXT_APPENDEOL ; 
 int /*<<< orphan*/  VC_C1SET ; 
 scalar_t__ FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,size_t*,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int
FUNC5(SCR *sp, VICMD *vp)
{
	size_t len;
	u_int32_t flags;
	int isempty;
	CHAR_T *p;

	flags = FUNC3(sp, vp, 0);
	sp->showmode = SM_INSERT;
	sp->lno = vp->m_start.lno;

	if (FUNC2(sp, sp->lno, &p, &len, &isempty)) {
		if (!isempty)
			return (1);
		len = 0;
	}

	if (len == 0)
		FUNC1(TXT_APPENDEOL);
	return (FUNC4(sp, vp, NULL, p, len,
	    0, OOBLNO, FUNC0(vp, VC_C1SET) ? vp->count : 1, flags));
}