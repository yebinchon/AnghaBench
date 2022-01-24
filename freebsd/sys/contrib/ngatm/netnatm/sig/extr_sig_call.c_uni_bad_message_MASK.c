#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct uni_ie_epref {int /*<<< orphan*/  flag; int /*<<< orphan*/  epref; } ;
struct TYPE_6__ {int /*<<< orphan*/  epstate; int /*<<< orphan*/  epref; int /*<<< orphan*/  cause; int /*<<< orphan*/  callstate; } ;
struct TYPE_5__ {scalar_t__ act; int /*<<< orphan*/  cref; } ;
struct TYPE_7__ {TYPE_2__ status; TYPE_1__ hdr; } ;
struct uni_all {TYPE_3__ u; int /*<<< orphan*/  mtype; } ;
struct party {int state; } ;
struct call {scalar_t__ cstate; TYPE_4__* uni; } ;
struct TYPE_8__ {int /*<<< orphan*/  cause; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ CALLST_N11 ; 
 scalar_t__ CALLST_N12 ; 
 scalar_t__ CALLST_U11 ; 
 scalar_t__ CALLST_U12 ; 
 scalar_t__ FUNC1 (struct uni_ie_epref) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct uni_all*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct uni_all* FUNC7 () ; 
 int /*<<< orphan*/  UNI_CAUSE_LOC_USER ; 
 int UNI_EPSTATE_NULL ; 
 int /*<<< orphan*/  FUNC8 (struct uni_all*) ; 
 scalar_t__ UNI_MSGACT_CLEAR ; 
 scalar_t__ UNI_MSGACT_IGNORE ; 
 int /*<<< orphan*/  UNI_STATUS ; 
 int /*<<< orphan*/  FUNC9 (struct call*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 struct party* FUNC11 (struct call*,struct uni_ie_epref*) ; 
 int /*<<< orphan*/  FUNC12 (struct uni_all*,TYPE_4__*) ; 

void
FUNC13(struct call *c, struct uni_all *u, u_int cause,
    struct uni_ie_epref *epref, int ps)
{
	struct uni_all *resp;
	struct party *p;

	if ((u->u.hdr.act == UNI_MSGACT_CLEAR &&
	    (c->cstate == CALLST_U11 ||
	     c->cstate == CALLST_U12 ||
	     c->cstate == CALLST_N11 ||
	     c->cstate == CALLST_N12)) ||
	    u->u.hdr.act == UNI_MSGACT_IGNORE)
		return;

	FUNC3(c->uni->cause, UNI_CAUSE_LOC_USER, cause);
	FUNC0(c->uni->cause, u->mtype);

	if (u->u.hdr.act == UNI_MSGACT_CLEAR) {
		FUNC9(c);
		return;
	}

	/*
	 * Send STATUS
	 */
	if ((resp = FUNC7()) != NULL) {
		FUNC6(resp, UNI_STATUS, &u->u.hdr.cref);
		FUNC2(resp->u.status.callstate,
		    FUNC10(c->cstate));
		resp->u.status.cause = c->uni->cause;

		if (epref != NULL && FUNC1(*epref)) {
			FUNC4(resp->u.status.epref, epref->epref, !epref->flag);
			if (ps == -1) {
				p = FUNC11(c, epref);
				if (p == NULL)
					ps = UNI_EPSTATE_NULL;
				else
					ps = p->state;
			}
			FUNC5(resp->u.status.epstate, ps);
		}
		(void)FUNC12(resp, c->uni);

		FUNC8(resp);
	}
}