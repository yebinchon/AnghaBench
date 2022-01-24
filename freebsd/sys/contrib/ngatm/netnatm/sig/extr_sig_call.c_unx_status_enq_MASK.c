#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct uni_msg {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  cause; int /*<<< orphan*/  callstate; int /*<<< orphan*/  epstate; int /*<<< orphan*/  epref; } ;
struct TYPE_15__ {int /*<<< orphan*/  flag; int /*<<< orphan*/  epref; } ;
struct TYPE_11__ {TYPE_8__ epref; } ;
struct TYPE_10__ {int /*<<< orphan*/  act; } ;
struct TYPE_13__ {TYPE_3__ status; TYPE_2__ status_enq; TYPE_1__ hdr; } ;
struct uni_all {TYPE_4__ u; } ;
struct party {int /*<<< orphan*/  state; } ;
struct call {scalar_t__ type; TYPE_5__* uni; int /*<<< orphan*/  cstate; int /*<<< orphan*/  mine; int /*<<< orphan*/  cref; } ;
struct TYPE_14__ {int /*<<< orphan*/  cx; } ;

/* Variables and functions */
 scalar_t__ CALL_LEAF ; 
 scalar_t__ CALL_ROOT ; 
 scalar_t__ FUNC0 (TYPE_8__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uni_all*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UNI_CAUSE_LOC_USER ; 
 int /*<<< orphan*/  UNI_CAUSE_STATUS ; 
 int /*<<< orphan*/  UNI_EPSTATE_NULL ; 
 int /*<<< orphan*/  FUNC6 (struct uni_all*) ; 
 int /*<<< orphan*/  UNI_STATUS ; 
#define  VFY_CLR 134 
#define  VFY_I 133 
#define  VFY_OK 132 
#define  VFY_RAI 131 
#define  VFY_RAIM 130 
#define  VFY_RAP 129 
#define  VFY_RAPU 128 
 int /*<<< orphan*/  FUNC7 (struct call*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct uni_all*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct uni_msg*,struct uni_all*,int /*<<< orphan*/ *) ; 
 struct party* FUNC11 (struct call*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC12 (struct uni_msg*) ; 
 int /*<<< orphan*/  FUNC13 (struct uni_all*,TYPE_5__*) ; 
 int FUNC14 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*) ; 

__attribute__((used)) static void
FUNC16(struct call *c, struct uni_msg *m, struct uni_all *u)
{
	struct party *p = NULL;
	u_int epref, flag;

	/*
	 * Analyze message
	 */
	(void)FUNC10(m, u, &c->uni->cx);

	switch (FUNC14(c->uni, u->u.hdr.act)) {

	  case VFY_CLR:
		FUNC15(c->uni);
		FUNC7(c);
		FUNC12(m);
		FUNC6(u);
	  	return;

	  case VFY_RAIM:
	  case VFY_RAI:
	  case VFY_RAP:
	  case VFY_RAPU:
	  case VFY_I:
	  case VFY_OK:
	  	break;
	}

	FUNC12(m);

	if ((c->type == CALL_ROOT || c->type == CALL_LEAF) &&
	    FUNC0(u->u.status_enq.epref)) {
		p = FUNC11(c, &u->u.status_enq.epref);

		epref = u->u.status_enq.epref.epref;
		flag = u->u.status_enq.epref.flag;
		FUNC9(u, 0, sizeof(*u));
		FUNC3(u->u.status.epref, epref, !flag);

		if (p != NULL)
			FUNC4(u->u.status.epstate, p->state);
		else
			FUNC4(u->u.status.epstate, UNI_EPSTATE_NULL);
	} else
		FUNC9(u, 0, sizeof(*u));


	FUNC5(u, UNI_STATUS, c->cref, !c->mine);
	FUNC1(u->u.status.callstate, FUNC8(c->cstate));
	FUNC2(u->u.status.cause, UNI_CAUSE_LOC_USER, UNI_CAUSE_STATUS);
	(void)FUNC13(u, c->uni);
	FUNC6(u);
}