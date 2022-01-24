#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct uni_msg {int dummy; } ;
struct TYPE_13__ {int /*<<< orphan*/ * cause; } ;
struct TYPE_15__ {int /*<<< orphan*/  cref; int /*<<< orphan*/  flag; } ;
struct TYPE_12__ {TYPE_6__ cref; } ;
struct TYPE_16__ {int /*<<< orphan*/  flag; int /*<<< orphan*/  epref; int /*<<< orphan*/  state; } ;
struct TYPE_11__ {int /*<<< orphan*/  epstate; TYPE_7__ epref; int /*<<< orphan*/  cause; TYPE_7__ callstate; } ;
struct TYPE_10__ {TYPE_7__ epref; } ;
struct TYPE_14__ {TYPE_4__ release_compl; TYPE_3__ hdr; TYPE_2__ status; TYPE_1__ status_enq; } ;
struct uni_all {int mtype; TYPE_5__ u; } ;
struct uni {int /*<<< orphan*/  cx; } ;
struct call {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct uni_all*,int const,TYPE_6__*) ; 
 int /*<<< orphan*/  SIGC_COBISETUP ; 
 int /*<<< orphan*/  SIGC_SETUP ; 
 struct uni_all* FUNC7 () ; 
 int /*<<< orphan*/  UNI_CALLSTATE_U0 ; 
 int /*<<< orphan*/  UNI_CAUSE_CREF_INV ; 
 int /*<<< orphan*/  UNI_CAUSE_LOC_USER ; 
 int /*<<< orphan*/  UNI_CAUSE_MSG_INCOMP ; 
 int /*<<< orphan*/  UNI_CAUSE_STATUS ; 
#define  UNI_COBISETUP 132 
 int /*<<< orphan*/  UNI_CODING_ITU ; 
 scalar_t__ UNI_DIAG_MTYPE ; 
 int /*<<< orphan*/  UNI_EPSTATE_NULL ; 
 int /*<<< orphan*/  UNI_FAC_COORD ; 
 int /*<<< orphan*/  FUNC8 (struct uni_all*) ; 
#define  UNI_RELEASE_COMPL 131 
#define  UNI_SETUP 130 
#define  UNI_STATUS 129 
#define  UNI_STATUS_ENQ 128 
 int /*<<< orphan*/  FUNC9 (struct uni*,int /*<<< orphan*/ ,int,char*,int) ; 
 struct call* FUNC10 (struct uni*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct uni_msg*,struct uni_all*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct call*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uni_msg*,struct uni_all*) ; 
 int /*<<< orphan*/  FUNC14 (struct uni_msg*) ; 
 int /*<<< orphan*/  FUNC15 (struct uni_all*,struct uni*) ; 

__attribute__((used)) static void
FUNC16(struct uni *uni, struct uni_msg *m, struct uni_all *u)
{
	struct uni_all *resp;
	struct call *c;
	u_int cause = UNI_CAUSE_CREF_INV;

	FUNC9(uni, UNI_FAC_COORD, 2, "UNKNOWN MTYPE = %x", u->mtype);

	switch (u->mtype) {

	  default:
		/*
		 * This message type is entirly unknown
		 *
		 * 5.6.4 and 5.7.1 are only when the call is not in the
		 * NULL state. This means, 5.6.3.2a takes over.
		 */
		break;

	  case UNI_SETUP:
		if (u->u.hdr.cref.flag)
			/*
			 * 5.6.3.2c
			 */
			goto drop;
		if ((c = FUNC10(uni, u->u.hdr.cref.cref, 0, 0)) != NULL) {
			FUNC13(c, SIGC_SETUP, 0, m, u);
			return;
		}
		goto drop;

	  case UNI_RELEASE_COMPL:
		/*
		 * 5.6.3.2c
		 */
		goto drop;

	  case UNI_STATUS:
		/*
		 * 5.6.12
		 *
		 * The SDLs don't use the verify procedure and don't
		 * handle the case of an invalid callstate - we
		 * ignore the message, if the callstate is not good.
		 */
		(void)FUNC11(m, u, &uni->cx);
		if (!FUNC1(u->u.status.callstate))
			goto drop;
		if (u->u.status.callstate.state == UNI_CALLSTATE_U0)
			goto drop;
		cause = UNI_CAUSE_MSG_INCOMP;
		break;

	  case UNI_STATUS_ENQ:
		if ((resp = FUNC7()) == NULL)
			goto drop;

		(void)FUNC11(m, u, &uni->cx);
		FUNC6(resp, UNI_STATUS, &u->u.hdr.cref);
		FUNC2(resp->u.status.callstate, UNI_CALLSTATE_U0);
		FUNC3(resp->u.status.cause, UNI_CAUSE_LOC_USER,
		    UNI_CAUSE_STATUS);

		if (FUNC1(u->u.status_enq.epref)) {
			/* reflect epref as required by L3MU_PO */
			resp->u.status.epref = u->u.status_enq.epref;
			FUNC4(resp->u.status.epref,
			    u->u.status_enq.epref.epref,
			    !u->u.status_enq.epref.flag);
			FUNC5(resp->u.status.epstate, UNI_EPSTATE_NULL);
		}

		(void)FUNC15(resp, uni);

		FUNC8(resp);
		goto drop;

	  case UNI_COBISETUP:
		if (u->u.hdr.cref.flag)
			/*
			 * 5.6.3.2c (probably)
			 */
			goto drop;
		if ((c = FUNC10(uni, u->u.hdr.cref.cref, 0, 0)) != NULL) {
			FUNC13(c, SIGC_COBISETUP, 0, m, u);
			return;
		}
		goto drop;
	}

	/*
	 * 5.6.3.2a)
	 *
	 * Respond with a RELEASE COMPLETE
	 */
	if ((resp = FUNC7()) == NULL)
		goto drop;

	FUNC6(resp, UNI_RELEASE_COMPL, &u->u.hdr.cref);
	FUNC3(resp->u.release_compl.cause[0], UNI_CAUSE_LOC_USER, cause);
	if (FUNC12(cause, UNI_CODING_ITU) == UNI_DIAG_MTYPE)
		FUNC0(resp->u.release_compl.cause[0], u->mtype);

	(void)FUNC15(resp, uni);

	FUNC8(resp);

  drop:
	FUNC8(u);
	FUNC14(m);
}