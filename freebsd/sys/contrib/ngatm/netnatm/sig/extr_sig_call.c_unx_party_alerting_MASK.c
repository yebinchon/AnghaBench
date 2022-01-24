#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct uni_msg {int dummy; } ;
struct TYPE_15__ {int /*<<< orphan*/  act; } ;
struct TYPE_20__ {scalar_t__ flag; int /*<<< orphan*/  epref; TYPE_1__ h; } ;
struct TYPE_17__ {TYPE_8__ epref; } ;
struct TYPE_16__ {int /*<<< orphan*/  cref; int /*<<< orphan*/  act; } ;
struct TYPE_18__ {TYPE_3__ party_alerting; TYPE_2__ hdr; } ;
struct uni_all {TYPE_4__ u; } ;
struct party {int /*<<< orphan*/  state; } ;
struct call {int /*<<< orphan*/  cstate; TYPE_5__* uni; } ;
struct TYPE_19__ {int /*<<< orphan*/  cx; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_8__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__) ; 
 int /*<<< orphan*/  SIGP_PARTY_ALERTING ; 
 int /*<<< orphan*/  UNI_CAUSE_ENDP_INV ; 
 int /*<<< orphan*/  UNI_CAUSE_MSG_INCOMP ; 
 int /*<<< orphan*/  UNI_EPSTATE_ALERT_RCVD ; 
 int /*<<< orphan*/  UNI_EPSTATE_NULL ; 
 int /*<<< orphan*/  FUNC2 (struct uni_all*) ; 
 int /*<<< orphan*/  UNI_IERR_BAD ; 
 int /*<<< orphan*/  UNI_IE_EPREF ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  VFY_CLR 134 
#define  VFY_I 133 
#define  VFY_OK 132 
#define  VFY_RAI 131 
#define  VFY_RAIM 130 
#define  VFY_RAP 129 
#define  VFY_RAPU 128 
 int /*<<< orphan*/  FUNC4 (struct call*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct call*,TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct call*,struct uni_all*,int /*<<< orphan*/ ,TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct party*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uni_msg*,struct uni_all*) ; 
 struct party* FUNC9 (struct call*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC11 (struct uni_msg*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_8__*,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*) ; 

__attribute__((used)) static void
FUNC15(struct call *c, struct uni_msg *m, struct uni_all *u,
    int legal)
{
	struct party *p = NULL;

	if (FUNC0(u->u.party_alerting.epref)) {
		if (u->u.party_alerting.epref.flag == 0) {
			FUNC1(u->u.party_alerting.epref);
			(void)FUNC3(&c->uni->cx, UNI_IE_EPREF,
			    u->u.party_alerting.epref.h.act, UNI_IERR_BAD);
		} else {
	    		p = FUNC9(c, u->u.party_alerting.epref.epref, 1);
			if (p == NULL) {
				FUNC6(c,
				    &u->u.party_alerting.epref,
				    UNI_CAUSE_ENDP_INV);
				goto ignore;
			}
		}
	}
	FUNC10(c->uni, &u->u.party_alerting.epref);

	switch (FUNC13(c->uni, u->u.hdr.act)) {

	  case VFY_CLR:
		FUNC14(c->uni);
		FUNC4(c);
		goto ignore;

	  case VFY_RAIM:
	  case VFY_RAI:
	  report:
		FUNC12(c->uni, &u->u.hdr.cref,
		    FUNC5(c->cstate), &u->u.party_alerting.epref,
		    p ? p->state : UNI_EPSTATE_NULL);
	  case VFY_I:
		goto ignore;

	  case VFY_RAP:
	  case VFY_RAPU:
		FUNC12(c->uni, &u->u.hdr.cref,
		    FUNC5(c->cstate), &u->u.party_alerting.epref,
		    p ? UNI_EPSTATE_ALERT_RCVD : UNI_EPSTATE_NULL);
		if (!FUNC0(u->u.party_alerting.epref))
			/* See below */
			goto ignore;
		break;

	  case VFY_OK:
		if (!FUNC0(u->u.party_alerting.epref))
			/* The rules require us the message to be ignored
			 * (9.5.3.2.2e) and to report status.
			 */
			goto report;
		break;
	}
	if (legal) {
		/* p is != NULL here */
		FUNC8(p, SIGP_PARTY_ALERTING, 0, m, u);
		return;
	}
	if (p == NULL)
		/* Q.2971 9.5.3.2.3a) */
		FUNC6(c, &u->u.party_alerting.epref,
		    UNI_CAUSE_ENDP_INV);
	else
		FUNC7(c, u, UNI_CAUSE_MSG_INCOMP,
		    &u->u.party_alerting.epref, p->state);

  ignore:
	FUNC11(m);
	FUNC2(u);
}