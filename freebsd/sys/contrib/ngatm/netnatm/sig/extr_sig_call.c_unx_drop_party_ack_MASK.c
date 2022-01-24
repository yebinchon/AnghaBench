#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct uni_msg {int dummy; } ;
struct TYPE_13__ {int /*<<< orphan*/  flag; int /*<<< orphan*/  epref; } ;
struct uni_drop_party_ack {TYPE_7__ epref; int /*<<< orphan*/  cause; } ;
struct TYPE_10__ {int /*<<< orphan*/  act; int /*<<< orphan*/  cref; } ;
struct TYPE_11__ {TYPE_1__ hdr; struct uni_drop_party_ack drop_party_ack; } ;
struct uni_all {TYPE_2__ u; } ;
struct party {int /*<<< orphan*/  state; } ;
struct call {TYPE_3__* uni; int /*<<< orphan*/  cstate; } ;
struct TYPE_12__ {int /*<<< orphan*/  cause; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_7__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGP_DROP_PARTY_ACK ; 
 int /*<<< orphan*/  UNI_CAUSE_IE_INV ; 
 int /*<<< orphan*/  UNI_CAUSE_LOC_USER ; 
 int /*<<< orphan*/  UNI_CAUSE_MSG_INCOMP ; 
 int /*<<< orphan*/  UNI_EPSTATE_NULL ; 
 int /*<<< orphan*/  FUNC2 (struct uni_all*) ; 
#define  VFY_CLR 134 
#define  VFY_I 133 
#define  VFY_OK 132 
#define  VFY_RAI 131 
#define  VFY_RAIM 130 
#define  VFY_RAP 129 
#define  VFY_RAPU 128 
 int /*<<< orphan*/  FUNC3 (struct call*) ; 
 int /*<<< orphan*/  FUNC4 (struct call*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct call*,struct uni_all*,int /*<<< orphan*/ ,TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct party*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uni_msg*,struct uni_all*) ; 
 struct party* FUNC8 (struct call*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct uni_msg*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 

__attribute__((used)) static void
FUNC14(struct call *c, struct uni_msg *m, struct uni_all *u,
    int legal)
{
	struct party *p;
	struct uni_drop_party_ack *ack = &u->u.drop_party_ack;

	if (FUNC0(u->u.drop_party_ack.epref)) {
		p = FUNC8(c, ack->epref.epref, ack->epref.flag);
		if (p != NULL) {
			FUNC4(c, &ack->cause, 1);
			FUNC13(c->uni);
			switch (FUNC11(c->uni, u->u.hdr.act)) {

			  case VFY_CLR:
				goto clear;

			  case VFY_RAIM:
			  case VFY_RAI:
				FUNC10(c->uni,
				    &u->u.hdr.cref, FUNC5(c->cstate),
				    &ack->epref, p->state);
			  case VFY_I:
				goto ignore;

			  case VFY_RAP:
				FUNC10(c->uni,
				    &u->u.hdr.cref, FUNC5(c->cstate),
				    &ack->epref, UNI_EPSTATE_NULL);
			  case VFY_RAPU:
			  case VFY_OK:
				break;
			}
			if (legal) {
				FUNC7(p, SIGP_DROP_PARTY_ACK, 0, m, u);
				return;
			}
			FUNC6(c, u, UNI_CAUSE_MSG_INCOMP,
			    &ack->epref, -1);
		}
		goto ignore;
	}

	/* Q.2971: 9.5.3.2.1 last paragraph
	 *         9.5.3.2.2 second to last paragraph
	 */
	(void)FUNC11(c->uni, u->u.hdr.act);
	FUNC1(c->uni->cause, UNI_CAUSE_LOC_USER, UNI_CAUSE_IE_INV);

  clear:
	FUNC12(c->uni);
	FUNC3(c);
	FUNC9(m);
	FUNC2(u);
	return;

  ignore:
	FUNC9(m);
	FUNC2(u);
}