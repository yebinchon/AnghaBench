#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;
typedef  struct TYPE_14__   TYPE_11__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct uni_msg {int dummy; } ;
struct TYPE_24__ {int /*<<< orphan*/  cause; int /*<<< orphan*/  epref; } ;
struct TYPE_23__ {int /*<<< orphan*/  cause; int /*<<< orphan*/  epref; } ;
struct TYPE_22__ {int /*<<< orphan*/  epref; } ;
struct TYPE_21__ {int /*<<< orphan*/  epref; } ;
struct TYPE_20__ {int /*<<< orphan*/  epref; } ;
struct TYPE_19__ {int /*<<< orphan*/  epref; } ;
struct TYPE_18__ {int /*<<< orphan*/  epref; } ;
struct TYPE_17__ {int /*<<< orphan*/  epref; } ;
struct TYPE_16__ {int /*<<< orphan*/  epref; } ;
struct TYPE_13__ {TYPE_9__ drop_party_ack; TYPE_8__ drop_party; TYPE_7__ add_party_rej; TYPE_6__ party_alerting; TYPE_5__ add_party; TYPE_4__ connect; TYPE_3__ alerting; TYPE_2__ call_proc; TYPE_1__ setup; } ;
struct uni_all {TYPE_10__ u; } ;
struct uni {int /*<<< orphan*/  arg; TYPE_11__* funcs; int /*<<< orphan*/  cause; int /*<<< orphan*/  proto; int /*<<< orphan*/  cx; int /*<<< orphan*/  sb_tb; } ;
struct call {size_t cstate; struct uni* uni; int /*<<< orphan*/  type; scalar_t__ mine; int /*<<< orphan*/  cref; } ;
typedef  enum call_sig { ____Placeholder_call_sig } call_sig ;
struct TYPE_15__ {int name; } ;
struct TYPE_14__ {int /*<<< orphan*/  (* uni_output ) (struct uni*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uni_msg*) ;} ;

/* Variables and functions */
#define  CALLST_N1 202 
#define  CALLST_N10 201 
#define  CALLST_N11 200 
#define  CALLST_N12 199 
#define  CALLST_N3 198 
#define  CALLST_N4 197 
#define  CALLST_N6 196 
#define  CALLST_N7 195 
#define  CALLST_N8 194 
#define  CALLST_N9 193 
#define  CALLST_NULL 192 
#define  CALLST_U1 191 
#define  CALLST_U10 190 
#define  CALLST_U11 189 
#define  CALLST_U12 188 
#define  CALLST_U3 187 
#define  CALLST_U4 186 
#define  CALLST_U6 185 
#define  CALLST_U7 184 
#define  CALLST_U8 183 
#define  CALLST_U9 182 
 int /*<<< orphan*/  FUNC0 (struct call*) ; 
 int /*<<< orphan*/  CALL_LEAF ; 
 int /*<<< orphan*/  CALL_ROOT ; 
#define  SIGC_ABORT_CALL_request 181 
#define  SIGC_ADD_PARTY 180 
#define  SIGC_ADD_PARTY_ACK 179 
#define  SIGC_ADD_PARTY_ACK_request 178 
#define  SIGC_ADD_PARTY_REJ 177 
#define  SIGC_ADD_PARTY_REJ_indication 176 
#define  SIGC_ADD_PARTY_REJ_request 175 
#define  SIGC_ADD_PARTY_request 174 
#define  SIGC_ALERTING 173 
#define  SIGC_ALERTING_request 172 
#define  SIGC_CALL_DELETE 171 
#define  SIGC_CALL_PROC 170 
#define  SIGC_COBISETUP 169 
#define  SIGC_CONNECT 168 
#define  SIGC_CONNECT_ACK 167 
#define  SIGC_DROP_PARTY 166 
#define  SIGC_DROP_PARTY_ACK 165 
#define  SIGC_DROP_PARTY_ACK_indication 164 
#define  SIGC_DROP_PARTY_ACK_request 163 
#define  SIGC_DROP_PARTY_indication 162 
#define  SIGC_DROP_PARTY_request 161 
#define  SIGC_END 160 
#define  SIGC_LINK_ESTABLISH_ERROR_indication 159 
#define  SIGC_LINK_ESTABLISH_confirm 158 
#define  SIGC_LINK_ESTABLISH_indication 157 
#define  SIGC_LINK_RELEASE_indication 156 
#define  SIGC_NOTIFY 155 
#define  SIGC_NOTIFY_request 154 
#define  SIGC_PARTY_ALERTING 153 
#define  SIGC_PARTY_ALERTING_request 152 
#define  SIGC_PARTY_DESTROYED 151 
#define  SIGC_PROCEEDING_request 150 
#define  SIGC_RELEASE 149 
#define  SIGC_RELEASE_COMPL 148 
#define  SIGC_RELEASE_request 147 
#define  SIGC_RELEASE_response 146 
#define  SIGC_SEND_ADD_PARTY_REJ 145 
#define  SIGC_SEND_DROP_PARTY 144 
#define  SIGC_SEND_DROP_PARTY_ACK 143 
#define  SIGC_SEND_STATUS_ENQ 142 
#define  SIGC_SETUP 141 
#define  SIGC_SETUP_COMPLETE_request 140 
#define  SIGC_SETUP_request 139 
#define  SIGC_SETUP_response 138 
#define  SIGC_STATUS 137 
#define  SIGC_STATUS_ENQ 136 
#define  SIGC_STATUS_ENQUIRY_request 135 
#define  SIGC_T301 134 
#define  SIGC_T303 133 
#define  SIGC_T308 132 
#define  SIGC_T310 131 
#define  SIGC_T313 130 
#define  SIGC_T322 129 
#define  SIGC_UNKNOWN 128 
 int /*<<< orphan*/  UNIAPI_ERROR_BAD_CALLSTATE ; 
 int /*<<< orphan*/  UNIAPI_OK ; 
 int /*<<< orphan*/  UNIAPI_PARTY_DESTROYED ; 
 int /*<<< orphan*/  UNIPROTO_UNI40N ; 
 int /*<<< orphan*/  UNIPROTO_UNI40U ; 
 int /*<<< orphan*/  UNI_CALLSTATE_U0 ; 
 int /*<<< orphan*/  UNI_CAUSE_MSG_INCOMP ; 
 int UNI_EPSTATE_NULL ; 
 int /*<<< orphan*/  UNI_FAC_CALL ; 
 int /*<<< orphan*/  UNI_FAC_ERR ; 
 int /*<<< orphan*/  FUNC1 (struct uni_all*) ; 
 int /*<<< orphan*/  FUNC2 (struct uni*,int /*<<< orphan*/ ,int,char*,int,...) ; 
 int /*<<< orphan*/ * call_sigs ; 
 TYPE_12__* callstates ; 
 int /*<<< orphan*/  FUNC3 (struct call*) ; 
 int /*<<< orphan*/  FUNC4 (struct call*,struct uni_msg*,struct uni_all*) ; 
 int /*<<< orphan*/  FUNC5 (struct call*,struct uni_msg*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct call*,struct uni_msg*) ; 
 int /*<<< orphan*/  FUNC7 (struct call*,struct uni_msg*) ; 
 int /*<<< orphan*/  FUNC8 (struct call*,struct uni_msg*) ; 
 int /*<<< orphan*/  FUNC9 (struct uni*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uni_msg*) ; 
 int /*<<< orphan*/  FUNC10 (struct call*,struct uni_msg*,struct uni_all*) ; 
 int /*<<< orphan*/  FUNC11 (struct call*) ; 
 int /*<<< orphan*/  FUNC12 (struct call*,struct uni_msg*,struct uni_all*,int const) ; 
 int /*<<< orphan*/  FUNC13 (struct call*) ; 
 int /*<<< orphan*/  FUNC14 (struct call*) ; 
 int /*<<< orphan*/  FUNC15 (struct call*) ; 
 int /*<<< orphan*/  FUNC16 (struct call*,struct uni_msg*,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC17 (struct call*,struct uni_msg*,struct uni_all*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct call*) ; 
 int /*<<< orphan*/  FUNC19 (struct call*,struct uni_msg*,struct uni_all*,int const) ; 
 int /*<<< orphan*/  FUNC20 (struct call*,struct uni_msg*,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC21 (struct call*,struct uni_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct call*) ; 
 int /*<<< orphan*/  FUNC23 (struct call*) ; 
 int /*<<< orphan*/  FUNC24 (struct call*) ; 
 int /*<<< orphan*/  FUNC25 (struct call*) ; 
 int /*<<< orphan*/  FUNC26 (struct call*,struct uni_msg*,struct uni_all*,int) ; 
 int /*<<< orphan*/  FUNC27 (struct call*,struct uni_msg*,struct uni_all*) ; 
 int /*<<< orphan*/  FUNC28 (struct call*,struct uni_all*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC29 (struct uni_msg*,struct uni_all*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (struct call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (struct uni_msg*) ; 
 int /*<<< orphan*/  FUNC32 (struct call*,int) ; 
 int /*<<< orphan*/  FUNC33 (struct uni_all*,struct uni*) ; 
 int /*<<< orphan*/  FUNC34 (struct call*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (struct uni*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (struct call*,struct uni_msg*,struct uni_all*,int) ; 
 int /*<<< orphan*/  FUNC37 (struct call*,struct uni_msg*,struct uni_all*,int) ; 
 int /*<<< orphan*/  FUNC38 (struct call*,struct uni_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (struct call*,struct uni_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC40 (struct call*,struct uni_msg*,struct uni_all*,int const) ; 
 int /*<<< orphan*/  FUNC41 (struct call*,struct uni_msg*,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC42 (struct call*,struct uni_msg*,struct uni_all*,int const) ; 
 int /*<<< orphan*/  FUNC43 (struct call*,struct uni_msg*,struct uni_all*,int) ; 
 int /*<<< orphan*/  FUNC44 (struct call*,struct uni_msg*,struct uni_all*,int) ; 
 int /*<<< orphan*/  FUNC45 (struct call*,struct uni_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC46 (struct call*,struct uni_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC47 (struct call*) ; 
 int /*<<< orphan*/  FUNC48 (struct call*) ; 
 int /*<<< orphan*/  FUNC49 (struct call*,struct uni_msg*,struct uni_all*) ; 
 int /*<<< orphan*/  FUNC50 (struct call*,struct uni_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC51 (struct call*,struct uni_msg*,struct uni_all*,int) ; 
 int /*<<< orphan*/  FUNC52 (struct call*,struct uni_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC53 (struct call*,struct uni_msg*,struct uni_all*,int const) ; 
 int /*<<< orphan*/  FUNC54 (struct call*,struct uni_msg*,struct uni_all*) ; 
 int /*<<< orphan*/  FUNC55 (struct call*,struct uni_msg*,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC56 (struct call*,struct uni_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC57 (struct call*,struct uni_all*) ; 
 int /*<<< orphan*/  FUNC58 (struct call*,struct uni_all*) ; 
 int /*<<< orphan*/  FUNC59 (struct call*,struct uni_msg*,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC60 (struct call*,struct uni_msg*,struct uni_all*) ; 
 int /*<<< orphan*/  FUNC61 (struct call*,struct uni_msg*,struct uni_all*) ; 
 int /*<<< orphan*/  FUNC62 (struct call*,struct uni_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC63 (struct call*) ; 
 int /*<<< orphan*/  FUNC64 (struct call*,struct uni_msg*,struct uni_all*) ; 
 int /*<<< orphan*/  FUNC65 (struct call*,struct uni_msg*) ; 
 int /*<<< orphan*/  FUNC66 (struct call*,struct uni_msg*) ; 
 int /*<<< orphan*/  FUNC67 (struct call*,struct uni_msg*) ; 

void
FUNC68(struct call *c, enum call_sig sig, uint32_t cookie,
    struct uni_msg *msg, struct uni_all *u)
{
	if (sig >= SIGC_END) {
		FUNC2(c->uni, UNI_FAC_ERR, 1,
		    "Signal %d outside of range to Call-Control", sig);
		if (msg)
			FUNC31(msg);
		if (u)
			FUNC1(u);
		return;
	}

	FUNC2(c->uni, UNI_FAC_CALL, 1, "Signal %s in state %s of call %u/%s"
	    "; cookie %u", call_sigs[sig], callstates[c->cstate].name, c->cref,
	    c->mine ? "mine" : "his", cookie);

	switch (sig) {

	  case SIGC_LINK_RELEASE_indication:
		if (c->cstate == CALLST_U10 || c->cstate == CALLST_N10)
			/* Q.2971:Call-Control-U 36/39 */
			/* Q.2971:Call-Control-N 20/39 */
			FUNC25(c);
		else
			/* Q.2971:Call-Control-U 36/39 */
			/* Q.2971:Call-Control-N 37/39 */
			FUNC48(c);
		break;

	  case SIGC_LINK_ESTABLISH_ERROR_indication:
		if (c->cstate != CALLST_U10 && c->cstate != CALLST_N10) {
			FUNC2(c->uni, UNI_FAC_ERR, 1,
			    "link-establish-error.indication in cs=%s",
			    callstates[c->cstate].name);
			break;
		}
		/* Q.2971:Call-Control-U 19/39 */
		/* Q.2971:Call-Control-N 20/39 */
		FUNC23(c);
		break;

	  case SIGC_LINK_ESTABLISH_indication:
		switch (c->cstate) {

		  case CALLST_U1: case CALLST_N1:
		  case CALLST_U3: case CALLST_N3:
		  case CALLST_U4: case CALLST_N4:
		  case CALLST_U6: case CALLST_N6:
		  case CALLST_U7: case CALLST_N7:
		  case CALLST_U8: case CALLST_N8:
		  case CALLST_U9: case CALLST_N9:
			/* Q.2971:Call-Control-U 36/39 */
			/* Q.2971:Call-Control-N 37/39 */
			FUNC47(c);
			break;

		  case CALLST_U10: case CALLST_N10:
			/* Q.2971:Call-Control-U 19/39 */
			/* Q.2971:Call-Control-N 20/39 */
			FUNC24(c);
			break;

		  case CALLST_U11: case CALLST_N11:
		  case CALLST_U12: case CALLST_N12:
			/* Q.2971:Call-Control-U 36/39 */
			/* Q.2971:Call-Control-N 37/39 */
			break;

		  default:
			FUNC2(c->uni, UNI_FAC_ERR, 1,
			    "link-establish.indication in cs=%s",
			    callstates[c->cstate].name);
		}
		break;

	  case SIGC_LINK_ESTABLISH_confirm:
		if (c->cstate != CALLST_U10 && c->cstate != CALLST_N10) {
			FUNC2(c->uni, UNI_FAC_ERR, 1,
			    "link-establish.confirm in cs=%s",
			    callstates[c->cstate].name);
			break;
		}
		/* Q.2971:Call-Control-U 19/39 */
		/* Q.2971:Call-Control-N 20/39 */
		FUNC22(c);
		break;

	  case SIGC_UNKNOWN:
		/* Q.2971:Call-Control 35/39 */
		/* Q.2971:Call-Control 36/39 */
		FUNC64(c, msg, u);
		break;

	  case SIGC_SETUP:
		if (c->cstate != CALLST_NULL) {
			(void)FUNC29(msg, u, &c->uni->cx);
			FUNC28(c, u, UNI_CAUSE_MSG_INCOMP,
			    &u->u.setup.epref, -1);
			goto drop;
		}
		if (c->uni->proto == UNIPROTO_UNI40N)
			/* Q.2971:Call-Control-N 4/39 */
			FUNC19(c, msg, u, CALLST_N1);
		else
			/* Q.2971:Call-Control-U 4/39 */
			FUNC19(c, msg, u, CALLST_U6);
		break;

	  case SIGC_CALL_PROC:
		if (c->cstate == CALLST_U1) {
			/* Q.2971:Call-Control-U 6/39 */
			FUNC12(c, msg, u, CALLST_U3);
			break;
		}
		if (c->cstate == CALLST_N6) {
			/* Q.2971:Call-Control-N 11/39 */
			FUNC12(c, msg, u, CALLST_N9);
			break;
		}
		(void)FUNC29(msg, u, &c->uni->cx);
		FUNC28(c, u, UNI_CAUSE_MSG_INCOMP,
		    &u->u.call_proc.epref, -1);
		goto drop;

	  case SIGC_ALERTING:
		if (c->cstate == CALLST_U1 || c->cstate == CALLST_U3) {
			/* Q.2971:Call-Control-U 37/39 (U1) */
			/* Q.2971:Call-Control-U 7/39 (U3) */
			FUNC40(c, msg, u, CALLST_U4);
			break;
		}
		if (c->cstate == CALLST_N6) {
			/* Q.2971:Call-Control-N 9/39 (N6) */
			/* Q.2971:Call-Control-N 17/39 (N9) */
			FUNC40(c, msg, u, CALLST_N7);
			break;
		}
		(void)FUNC29(msg, u, &c->uni->cx);
		FUNC28(c, u, UNI_CAUSE_MSG_INCOMP,
		    &u->u.alerting.epref, -1);
		goto drop;

	  case SIGC_CONNECT:
		if (c->cstate == CALLST_U1 || c->cstate == CALLST_U3 ||
		    c->cstate == CALLST_U4) {
			/* Q.2971:Call-Control-U 7-8/39  (U3) */
			/* Q.2971:Call-Control-U 11/39   (U4) */
			/* Q.2971:Call-Control-U 37/39   (U1) */
			FUNC42(c, msg, u, CALLST_U10);
			break;
		}
		if (c->cstate == CALLST_N6 || c->cstate == CALLST_N7 ||
		    c->cstate == CALLST_N9) {
			/* Q.2971:Call-Control-N 9-10/39 (N6) */
			/* Q.2971:Call-Control-N 14/39   (N7) */
			/* Q.2971:Call-Control-N 17/39   (N9) */
			FUNC42(c, msg, u, CALLST_N8);
			break;
		}
		(void)FUNC29(msg, u, &c->uni->cx);
		FUNC28(c, u, UNI_CAUSE_MSG_INCOMP,
		    &u->u.connect.epref, -1);
		goto drop;

	  case SIGC_CONNECT_ACK:
		if (c->cstate == CALLST_U8) {
			/* Q.2971:Call-Control-U 15-16/39 */
			FUNC17(c, msg, u, CALLST_U10);
			break;
		}
		if (c->cstate == CALLST_N10) {
			/* Q.2971:Call-Control-N 18/39 */
			FUNC4(c, msg, u);
			break;
		}
		FUNC28(c, u, UNI_CAUSE_MSG_INCOMP, NULL, 0);
		goto drop;

	  case SIGC_RELEASE:
		switch (c->cstate) {

		  default:
			FUNC28(c, u, UNI_CAUSE_MSG_INCOMP, NULL, 0);
			goto drop;

		  case CALLST_U11:
		  case CALLST_N12:
			/* Q.2971:Call-Control-U 28/39 */
			/* Q.2971:Call-Control-N 30/39 */
			FUNC10(c, msg, u);
			break;

		  case CALLST_U1:
		  case CALLST_U3:
		  case CALLST_U4:
		  case CALLST_U6:
		  case CALLST_U7:
		  case CALLST_U8:
		  case CALLST_U9:
		  case CALLST_U10:
		  case CALLST_U12:
			/* Q.2971:Call-Control-U 25/39 */
			FUNC53(c, msg, u, CALLST_U12);
			break;

		  case CALLST_N1:
		  case CALLST_N3:
		  case CALLST_N4:
		  case CALLST_N6:
		  case CALLST_N7:
		  case CALLST_N8:
		  case CALLST_N9:
		  case CALLST_N10:
		  case CALLST_N11:
			/* Q.2971:Call-Control-N 26/39 */
			FUNC53(c, msg, u, CALLST_N11);
			break;
		}
		break;

	  case SIGC_RELEASE_COMPL:
		/* Q.2971:Call-Control-U 25/39 */
		/* Q.2971:Call-Control-N 26/39 */
		FUNC54(c, msg, u);
		break;

	  case SIGC_NOTIFY:
		/* Q.2971:Call-Control-U 18/39 */
		/* Q.2971:Call-Control-N 19/39 */
		FUNC49(c, msg, u);
		break;

	  case SIGC_STATUS:
		if (c->cstate == CALLST_U11 || c->cstate == CALLST_U12 ||
		    c->cstate == CALLST_N11 || c->cstate == CALLST_N12) {
			/* Q.2971:Call-Control-U 29/39 (U11) */
			/* Q.2971:Call-Control-U 30/39 (U12) */
			/* Q.2971:Call-Control-N 29/39 (N11) */
			/* Q.2971:Call-Control-N 31/39 (N12) */
			FUNC27(c, msg, u);
			break;
		}
		/* Q.2971:Call-Control-U 32/39 */
		/* Q.2971:Call-Control-N 33/39 */
		FUNC60(c, msg, u);
		break;

	  case SIGC_STATUS_ENQ:
		/* Q.2971:Call-Control-U 31/39 */
		/* Q.2971:Call-Control-N 32/39 */
		FUNC61(c, msg, u);
		break;

	  case SIGC_ADD_PARTY:
		(void)FUNC29(msg, u, &c->uni->cx);

		if (c->type != CALL_LEAF && c->type != CALL_ROOT) {
			FUNC28(c, u, UNI_CAUSE_MSG_INCOMP,
			    &u->u.add_party.epref, UNI_EPSTATE_NULL);
			goto drop;
		}
		switch (c->cstate) {
		  case CALLST_U7:
		  case CALLST_U8:
		  case CALLST_U10:
		  case CALLST_N4:
		  case CALLST_N10:
			/* Q.2971:Call-Control-U 14/39  U7 */
			/* Q.2971:Call-Control-U 15/39  U8 */
			/* Q.2971:Call-Control-U 21/39  U10 */
			/* Q.2971:Call-Control-N 8/39   N4 */
			/* Q.2971:Call-Control-N 21/39  N10 */
			FUNC36(c, msg, u, 1);
			break;

		  default:
			FUNC36(c, msg, u, 0);
			goto drop;
		}
		break;

	  case SIGC_PARTY_ALERTING:
		(void)FUNC29(msg, u, &c->uni->cx);

		if (c->type != CALL_ROOT) {
			FUNC28(c, u, UNI_CAUSE_MSG_INCOMP,
			    &u->u.party_alerting.epref, -1);
			goto drop;
		}
		switch (c->cstate) {

		  default:
			/* Q.2971 9.5.3.2.3a) */
			FUNC51(c, msg, u, 0);
			break;

		  case CALLST_U4:
		  case CALLST_U10:
			/* Q.2971:Call-Control-U 9/39   U4 */
			/* Q.2971:Call-Control-U 21/39  U10 */
			/* Q.2971:Call-Control-N 12/39  N7 */
			/* Q.2971:Call-Control-N 15/39  N8 */
			/* Q.2971:Call-Control-N 22/39  N10 */
			FUNC51(c, msg, u, 1);
			break;
		}
		break;

	  case SIGC_ADD_PARTY_ACK:
		(void)FUNC29(msg, u, &c->uni->cx);

		if (c->type != CALL_ROOT) {
			FUNC28(c, u, UNI_CAUSE_MSG_INCOMP,
			    &u->u.add_party_rej.epref, -1);
			goto drop;
		}
		switch (c->cstate) {

		  case CALLST_U10:
			/* Q.2971:Call-Control-U 21/39 U10 */
			/* Q.2971:Call-Control-N 15/39 N8 */
			/* Q.2971:Call-Control-N 22/39 N10 */
			FUNC26(c, msg, u, 1);
			break;

		  default:
			/* Q.2971 9.5.3.2.3a) */
			FUNC26(c, msg, u, 0);
			break;
		}
		break;

	  case SIGC_ADD_PARTY_REJ:
		(void)FUNC29(msg, u, &c->uni->cx);

		if (c->type != CALL_ROOT) {
			FUNC28(c, u, UNI_CAUSE_MSG_INCOMP,
			    &u->u.add_party_rej.epref, -1);
			goto drop;
		}
		switch (c->cstate) {

		  case CALLST_U4:
	     	  case CALLST_U10:
		  case CALLST_N7:
		  case CALLST_N8:
		  case CALLST_N10:
			/* Q.2971:Call-Control-U 9/39 U4 */
			/* Q.2971:Call-Control-U 21/39 U10 */
			/* Q.2971:Call-Control-N 12/39 N7 */
			/* Q.2971:Call-Control-N 15/39 N8 */
			/* Q.2971:Call-Control-N 22/39 N10 */
			FUNC37(c, msg, u, 1);
			break;

		  default:
			/* Q.2971: 9.5.3.2.3b */
			FUNC37(c, msg, u, 0);
			break;
		}
		break;

	  case SIGC_DROP_PARTY:
		(void)FUNC29(msg, u, &c->uni->cx);

		if (c->type != CALL_ROOT && c->type != CALL_LEAF) {
			FUNC28(c, u, UNI_CAUSE_MSG_INCOMP,
			    &u->u.drop_party.epref, -1);
			goto drop;
		}
		switch (c->cstate) {
		  case CALLST_U11:
		  case CALLST_U12:
		  case CALLST_N11:
		  case CALLST_N12:
			/* Q.2971:Call-Control-U 28/39 U11 */
			/* Q.2971:Call-Control-U 30/39 U12 */
			/* Q.2971:Call-Control-N 29/39 N11 */
			/* Q.2971:Call-Control-N 30/39 N12 */
			goto drop;

		  case CALLST_NULL:
			FUNC28(c, u, UNI_CAUSE_MSG_INCOMP,
			    &u->u.drop_party.epref, UNI_EPSTATE_NULL);
			goto drop;

		  case CALLST_U3:
		  case CALLST_N3:
			/* L3MU_17_38 */
			FUNC43(c, msg, u, 0);
			break;

		  case CALLST_U8:
			if (c->uni->sb_tb) {
				/* L3MU_06_0[3-6] */
				FUNC43(c, msg, u, 0);
				break;
			}
			/* FALLTHRU */

		  default:
			/* Q.2971:Call-Control-U 26/39 Ux */
			/* Q.2971:Call-Control-U 21/39 U10 */
			/* Q.2971:Call-Control-N 27/39 Nx */
			/* Q.2971:Call-Control-N 21/39 N10 */
			FUNC43(c, msg, u, 1);
			break;
		}
		break;

	  case SIGC_DROP_PARTY_ACK:
		(void)FUNC29(msg, u, &c->uni->cx);

		if (c->type != CALL_ROOT && c->type != CALL_LEAF) {
			FUNC28(c, u, UNI_CAUSE_MSG_INCOMP,
			    &u->u.drop_party_ack.epref, -1);
			goto drop;
		}
		switch (c->cstate) {

		  case CALLST_U11:
		  case CALLST_U12:
			/* Q.2971:Call-Control-U 28/39 U11 */
			/* Q.2971:Call-Control-U 30/39 U12 */
			/* Q.2971:Call-Control-N 29/39 N11 */
			/* Q.2971:Call-Control-N 30/39 N12 */
			goto drop;

		  case CALLST_NULL:
			FUNC28(c, u, UNI_CAUSE_MSG_INCOMP,
			    &u->u.drop_party.epref, UNI_EPSTATE_NULL);
			goto drop;

		  case CALLST_U4:
		  case CALLST_N4:
		  case CALLST_U7:
		  case CALLST_N7:
		  case CALLST_U8:
		  case CALLST_N8:
		  case CALLST_U10:
		  case CALLST_N10:
			/* Q.2971:Call-Control-U 26/39 Ux */
			/* Q.2971:Call-Control-U 21/39 U10 */
			/* Q.2971:Call-Control-N 27/39 Nx */
			/* Q.2971:Call-Control-N 22/39 N10 */
			FUNC44(c, msg, u, 1);
			break;

		  default:
			/* Q.2971 10.5 4th paragraph */
			FUNC44(c, msg, u, 0);
			break;
		}
		break;

	  case SIGC_COBISETUP:	/* XXX */
		FUNC64(c, msg, u);
		break;

	  /*
	   * User signals
	   */
	  case SIGC_SETUP_request:
		if (c->cstate == CALLST_NULL) {
			/* Q.2971:Call-Control-U 4/39 (U0) */
			/* Q.2971:Call-Control-N 4/39 (N0) */
			if (c->uni->proto == UNIPROTO_UNI40N)
				FUNC20(c, msg, cookie, CALLST_N6);
			else
				FUNC20(c, msg, cookie, CALLST_U1);
			break;
		}
		FUNC2(c->uni, UNI_FAC_ERR, 1, "setup.request in cs=%s",
		    callstates[c->cstate].name);
		FUNC34(c, UNIAPI_ERROR_BAD_CALLSTATE, cookie);
		FUNC31(msg);
		break;

	  case SIGC_SETUP_response:
		if (c->cstate == CALLST_U6 || c->cstate == CALLST_U9 ||
		    c->cstate == CALLST_U7) {
			/* Q.2971:Call-Control-U 13/39	(U6) */
			/* Q.2971:Call-Control-U 14/39	(U7) */
			/* Q.2971:Call-Control-U 17/39	(U9) */
			FUNC59(c, msg, cookie, CALLST_U8);
			break;
		}
		if (c->cstate == CALLST_N1 || c->cstate == CALLST_N3 ||
		    c->cstate == CALLST_N4) {
			/* Q.2971:Call-Control-N 39/39  (N1) */
			/* Q.2971:Call-Control-N 7/39   (N3) */
			/* Q.2971:Call-Control-N 8/39   (N4) */
			FUNC59(c, msg, cookie, CALLST_N10);
			break;
		}
		FUNC2(c->uni, UNI_FAC_ERR, 1, "setup.response in cs=%s",
		    callstates[c->cstate].name);
		FUNC34(c, UNIAPI_ERROR_BAD_CALLSTATE, cookie);
		FUNC31(msg);
		break;

	  case SIGC_SETUP_COMPLETE_request:
		if (c->cstate == CALLST_N8) {
			/* Q.2971:Call-Control-N 15/39 (N8) */
			FUNC5(c, msg, cookie, CALLST_N10);
			break;
		}
		FUNC2(c->uni, UNI_FAC_ERR, 1, "setup_compl.request in cs=%s",
		    callstates[c->cstate].name);
		FUNC34(c, UNIAPI_ERROR_BAD_CALLSTATE, cookie);
		FUNC31(msg);
		break;

	  case SIGC_PROCEEDING_request:
		if (c->cstate == CALLST_U6) {
			/* Q.2971:Call-Control-U 12/39 (U6) */
			FUNC16(c, msg, cookie, CALLST_U9);
			break;
		}
		if (c->cstate == CALLST_N1) {
			/* Q.2971:Call-Control-N 6/39 (N1) */
			FUNC16(c, msg, cookie, CALLST_N3);
			break;
		}
		FUNC2(c->uni, UNI_FAC_ERR, 1, "proceeding.request in cs=%s",
		    callstates[c->cstate].name);
		FUNC34(c, UNIAPI_ERROR_BAD_CALLSTATE, cookie);
		FUNC31(msg);
		break;

	  case SIGC_ALERTING_request:
		if (c->cstate == CALLST_U6 || c->cstate == CALLST_U9) {
			/* Q.2971:Call-Control-U 13/39 (U6) */
			/* Q.2971:Call-Control-U 17/39 (U9) */
			FUNC41(c, msg, cookie, CALLST_U7);
			break;
		}
		if (c->cstate == CALLST_N1 || c->cstate == CALLST_N3) {
			/* Q.2971:Call-Control-N 38/39 (N1) */
			/* Q.2971:Call-Control-N 7/39  (N3) */
			FUNC41(c, msg, cookie, CALLST_N4);
			break;
		}
		FUNC2(c->uni, UNI_FAC_ERR, 1, "alerting.request in cs=%s",
		    callstates[c->cstate].name);
		FUNC34(c, UNIAPI_ERROR_BAD_CALLSTATE, cookie);
		FUNC31(msg);
		break;

	  case SIGC_RELEASE_request:
		switch (c->cstate) {

		  case CALLST_U1:
		  case CALLST_U3:
		  case CALLST_U4:
		  case CALLST_U6:
		  case CALLST_U7:
		  case CALLST_U8:
		  case CALLST_U9:
		  case CALLST_U10:
			/* Q.2971:Call-Control-U 27/39 */
			FUNC55(c, msg, cookie, CALLST_U11);
			break;

		  case CALLST_N1:
		  case CALLST_N3:
		  case CALLST_N4:
		  case CALLST_N6:
		  case CALLST_N7:
		  case CALLST_N8:
		  case CALLST_N9:
		  case CALLST_N10:
			/* Q.2971:Call-Control-N 28/39 */
			FUNC55(c, msg, cookie, CALLST_N12);
			break;

		  case CALLST_U11:
		  case CALLST_U12:
		  case CALLST_N11:
		  case CALLST_N12:
		  case CALLST_NULL:
			FUNC2(c->uni, UNI_FAC_ERR, 1,
			    "release.request in cs=%s",
			    callstates[c->cstate].name);
			FUNC34(c, UNIAPI_ERROR_BAD_CALLSTATE,
			    cookie);
			FUNC31(msg);
			break;
		}
		break;

	  case SIGC_RELEASE_response:
		if (c->cstate == CALLST_U6 || c->cstate == CALLST_U12 ||
		    c->cstate == CALLST_N1 || c->cstate == CALLST_N11) {
			/* Q.2971:Call-Control-U 12/39 (U6) */
			/* Q.2971:Call-Control-U 30/39 (U12) */
			/* Q.2971:Call-Control-N 6/39  (N1) */
			/* Q.2971:Call-Control-N 29/39 (N11) */
			FUNC56(c, msg, cookie);
			break;
		}
		FUNC2(c->uni, UNI_FAC_ERR, 1, "release.response in cs=%s",
		    callstates[c->cstate].name);
		FUNC34(c, UNIAPI_ERROR_BAD_CALLSTATE, cookie);
		FUNC31(msg);
		break;

	  case SIGC_NOTIFY_request:
		/* Q.2971:Call-Control-U 18/39 */
		/* Q.2971:Call-Control-N 19/39 */
		FUNC50(c, msg, cookie);
		break;

	  case SIGC_STATUS_ENQUIRY_request:
		/* Q.2971:Call-Control-U 31/39 */
		/* Q.2971:Call-Control-N 32/39 */
		FUNC62(c, msg, cookie);
		break;

	  case SIGC_ADD_PARTY_request:
		if (c->cstate == CALLST_U4 || c->cstate == CALLST_U10 ||
		    c->cstate == CALLST_N7 || c->cstate == CALLST_N10) {
			/* Q.2971:Call-Control-U 9-10/39 (U4) */
			/* Q.2971:Call-Control-U 21/39 (U10) */
			/* Q.2971:Call-Control-N 12/39 (N7) */
			/* Q.2971:Call-Control-N 22/39 (N10) */
			FUNC39(c, msg, cookie);
			break;
		}
		FUNC2(c->uni, UNI_FAC_ERR, 1, "add-party.request in cs=%s",
		    callstates[c->cstate].name);
		FUNC34(c, UNIAPI_ERROR_BAD_CALLSTATE, cookie);
		FUNC31(msg);
		break;

	  case SIGC_PARTY_ALERTING_request:
		if (c->cstate == CALLST_U7 || c->cstate == CALLST_U8 ||
		    c->cstate == CALLST_U10 ||
		    c->cstate == CALLST_N4 || c->cstate == CALLST_N10) {
			/* Q.2971:Call-Control-U 14/39 U7 */
			/* Q.2971:Call-Control-U 15/39 U8 */
			/* Q.2971:Call-Control-U 21/39 U10 */
			/* Q.2971:Call-Control-N 8/39  N4 */
			/* Q.2971:Call-Control-N 22/39 N10 */
			FUNC52(c, msg, cookie);
			break;
		}
		FUNC2(c->uni, UNI_FAC_ERR, 1,
		    "party-alerting.request in cs=%s",
		    callstates[c->cstate].name);
		FUNC34(c, UNIAPI_ERROR_BAD_CALLSTATE, cookie);
		FUNC31(msg);
		break;

	  case SIGC_ADD_PARTY_ACK_request:
		if (c->cstate == CALLST_U10 || c->cstate == CALLST_N10) {
			/* Q.2971:Call-Control-U 21/39 (U10) */
			/* Q.2971:Call-Control-N 22/39 (N10)*/
			FUNC21(c, msg, cookie);
			break;
		}
		FUNC2(c->uni, UNI_FAC_ERR, 1,
		    "add-party-ack.request in cs=%s",
		    callstates[c->cstate].name);
		FUNC34(c, UNIAPI_ERROR_BAD_CALLSTATE, cookie);
		FUNC31(msg);
		break;

	  case SIGC_ADD_PARTY_REJ_request:
		if (c->cstate == CALLST_U7 || c->cstate == CALLST_U8 ||
		    c->cstate == CALLST_U10 ||
		    c->cstate == CALLST_N4 || c->cstate == CALLST_N10) {
			/* Q.2971:Call-Control-U 14/39 U7 */
			/* Q.2971:Call-Control-U 15/39 U8 */
			/* Q.2971:Call-Control-U 21/39 U10 */
			/* Q.2971:Call-Control-N 8/39  N4 */
			/* Q.2971:Call-Control-N 22/39 N10 */
			FUNC38(c, msg, cookie);
			break;
		}
		FUNC2(c->uni, UNI_FAC_ERR, 1,
		    "add-party-rej.request in cs=%s",
		    callstates[c->cstate].name);
		FUNC34(c, UNIAPI_ERROR_BAD_CALLSTATE, cookie);
		FUNC31(msg);
		break;

	  case SIGC_DROP_PARTY_request:
		if (c->cstate != CALLST_U11 && c->cstate != CALLST_U12 &&
		    c->cstate != CALLST_N11 && c->cstate != CALLST_N12 &&
		    c->cstate != CALLST_NULL) {
			/* Q.2971:Call-Control-U 21/39 U10 */
			/* Q.2971:Call-Control-U 26/39 U1-U9 */
			/* Q.2971:Call-Control-N 22/39 N10 */
			/* Q.2971:Call-Control-N 27/39 N1-N9 */
			FUNC46(c, msg, cookie);
			break;
		}
		FUNC2(c->uni, UNI_FAC_ERR, 1, "drop-party.request in cs=%s",
		    callstates[c->cstate].name);
		FUNC34(c, UNIAPI_ERROR_BAD_CALLSTATE, cookie);
		FUNC31(msg);
		break;

	  case SIGC_DROP_PARTY_ACK_request:
		if (c->cstate != CALLST_U11 && c->cstate != CALLST_U12 &&
		    c->cstate != CALLST_N11 && c->cstate != CALLST_N12 &&
		    c->cstate != CALLST_NULL) {
			/* Q.2971:Call-Control-U 21/39 U10 */
			/* Q.2971:Call-Control-U 26/39 U1-U9 */
			/* Q.2971:Call-Control-N 22/39 N10 */
			/* Q.2971:Call-Control-N 27/39 N1-N9 */
			FUNC45(c, msg, cookie);
			break;
		}
		FUNC2(c->uni, UNI_FAC_ERR, 1,
		    "drop-party-ack.request in cs=%s",
		    callstates[c->cstate].name);
		FUNC34(c, UNIAPI_ERROR_BAD_CALLSTATE, cookie);
		FUNC31(msg);
		break;

	  case SIGC_ABORT_CALL_request:
	    {
		struct uni *uni = c->uni;

		FUNC30(c, 0);
		FUNC35(uni, UNIAPI_OK, cookie, UNI_CALLSTATE_U0);
		break;
	    }

	  /*
	   * Timers
	   */
	  case SIGC_T301:
		if (c->cstate == CALLST_U4 || c->cstate == CALLST_N7) {
			/* Q.2971:Call-Control-U Missing */
			/* Q.2971:Call-Control-N 14/39 */
			FUNC15(c);
			break;
		}
		FUNC2(c->uni, UNI_FAC_ERR, 1, "T301 in cs=%s",
		    callstates[c->cstate].name);
		break;

	  case SIGC_T303:
		if (c->cstate == CALLST_U1 || c->cstate == CALLST_N6) {
			/* Q.2971:Call-Control-U 6/39 */
			/* Q.2971:Call-Control-N 11/39 */
			FUNC13(c);
			break;
		}
		FUNC2(c->uni, UNI_FAC_ERR, 1, "T303 in cs=%s",
		    callstates[c->cstate].name);
		break;

	  case SIGC_T308:
		if (c->cstate == CALLST_U11 || c->cstate == CALLST_N12) {
			/* Q.2971:Call-Control-U 28/39 */
			/* Q.2971:Call-Control-N 30/39 */
			FUNC11(c);
			break;
		}
		FUNC2(c->uni, UNI_FAC_ERR, 1, "T308 in cs=%s",
		    callstates[c->cstate].name);
		break;

	  case SIGC_T310:
		if (c->cstate == CALLST_U3 || c->cstate == CALLST_N9) {
			/* Q.2971:Call-Control-U 7/39 */
			/* Q.2971:Call-Control-N 17/39 */
			FUNC14(c);
			break;
		}
		FUNC2(c->uni, UNI_FAC_ERR, 1, "T310 in cs=%s",
		    callstates[c->cstate].name);
		break;

	  case SIGC_T313:
		if (c->cstate == CALLST_U8) {
			/* Q.2971:Call-Control-U 15/39 */
			FUNC18(c);
			break;
		}
		FUNC2(c->uni, UNI_FAC_ERR, 1, "T313 in cs=%s",
		    callstates[c->cstate].name);
		break;

	  case SIGC_T322:
		/* Q.2971:Call-Control-U 34/39 */
		/* Q.2971:Call-Control-N 35/39 */
		FUNC63(c);
		break;

	  case SIGC_CALL_DELETE:
		FUNC0(c);
		break;

	  /*
	   * Party-Control
	   */
	  case SIGC_DROP_PARTY_indication:
		if (c->uni->proto == UNIPROTO_UNI40U)
			/* Q.2971:Call-Control-U 23/39 */
			FUNC67(c, msg);
		else
			/* Q.2971:Call-Control-N 23/39 */
			FUNC8(c, msg);
		break;

	  case SIGC_DROP_PARTY_ACK_indication:
		if (c->uni->proto == UNIPROTO_UNI40U)
			/* Q.2971:Call-Control-U 23/39 */
			FUNC66(c, msg);
		else
			/* Q.2971:Call-Control-N 23/39 */
			FUNC7(c, msg);
		break;

	  case SIGC_ADD_PARTY_REJ_indication:
		if (c->uni->proto == UNIPROTO_UNI40U)
			/* Q.2971:Call-Control-U 23/39 */
			FUNC65(c, msg);
		else
			/* Q.2971:Call-Control-N 23/39 */
			FUNC6(c, msg);
		break;


	  case SIGC_SEND_DROP_PARTY:
		/* Q.2971:Call-Control-U 21/39 */
		/* Q.2971:Call-Control-U 25/39 */
		if (FUNC32(c, 2) != 0)
			(void)FUNC33(u, c->uni);
		else if(c->cstate != CALLST_U11) {
			c->uni->cause = u->u.drop_party.cause;
			FUNC3(c);
		}
		FUNC1(u);
		break;

	  case SIGC_SEND_DROP_PARTY_ACK:
		/* Q.2971:Call-Control-U 21/39 */
		/* Q.2971:Call-Control-U 25/39 */
		if (FUNC32(c, 2) != 0)
			(void)FUNC33(u, c->uni);
		else if (c->cstate != CALLST_U11) {
			c->uni->cause = u->u.drop_party_ack.cause;
			FUNC3(c);
		}
		FUNC1(u);
		break;

	  case SIGC_SEND_ADD_PARTY_REJ:
		/* Q.2971:Call-Control-U 21/39 */
		/* Q.2971:Call-Control-U 24/39 */
		FUNC57(c, u);
		break;

	  case SIGC_SEND_STATUS_ENQ:
		/* Q.2971:Call-Control-U 21/39 */
		/* Q.2971:Call-Control-U 25/39 */
		FUNC58(c, u);
		break;

	  case SIGC_PARTY_DESTROYED:
		c->uni->funcs->uni_output(c->uni, c->uni->arg,
		    UNIAPI_PARTY_DESTROYED, cookie, msg);
		break;

	  case SIGC_END:
		break;
	}

	return;

  drop:
	/*
	 * This is for SAAL message signals that should be dropped.
	 */
	FUNC31(msg);
	FUNC1(u);
}