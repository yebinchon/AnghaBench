#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct uni_msg {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  act; int /*<<< orphan*/  cref; } ;
struct TYPE_10__ {int /*<<< orphan*/  flag; int /*<<< orphan*/  epref; } ;
struct uni_add_party_rej {TYPE_3__ epref; int /*<<< orphan*/  cause; } ;
struct TYPE_9__ {TYPE_1__ hdr; struct uni_add_party_rej add_party_rej; } ;
struct uni_all {TYPE_2__ u; } ;
struct party {int /*<<< orphan*/  state; } ;
struct call {int /*<<< orphan*/  uni; int /*<<< orphan*/  cstate; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__) ; 
 int /*<<< orphan*/  SIGP_ADD_PARTY_REJ ; 
 int /*<<< orphan*/  UNI_CAUSE_MSG_INCOMP ; 
 int /*<<< orphan*/  FUNC2 (struct uni_all*) ; 
 int /*<<< orphan*/  UNI_IE_EPREF ; 
#define  VFY_CLR 134 
#define  VFY_I 133 
#define  VFY_OK 132 
#define  VFY_RAI 131 
#define  VFY_RAIM 130 
#define  VFY_RAP 129 
#define  VFY_RAPU 128 
 int /*<<< orphan*/  FUNC3 (struct call*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct call*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct call*,struct uni_all*,int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct party*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uni_msg*,struct uni_all*) ; 
 struct party* FUNC9 (struct call*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct uni_msg*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16(struct call *c, struct uni_msg *m, struct uni_all *u,
    int legal)
{
	struct uni_add_party_rej *ar = &u->u.add_party_rej;
	struct party *p;

	if (FUNC0(ar->epref)) {
		p = FUNC9(c, ar->epref.epref, ar->epref.flag);
		if (p == NULL)
			goto ignore;

		if (legal) {
			FUNC5(c, &ar->cause, 0);
			FUNC15(c->uni);
			switch (FUNC13(c->uni, u->u.hdr.act)) {

			  case VFY_CLR:
				goto clear;

			  case VFY_RAIM:
			  case VFY_RAI:
				FUNC12(c->uni,
				    &u->u.hdr.cref, FUNC6(c->cstate),
				    &ar->epref, p->state);
			  case VFY_I:
				goto ignore;

			  case VFY_RAPU:
				FUNC14(c->uni);
				break;

			  case VFY_RAP:
				FUNC12(c->uni,
				    &u->u.hdr.cref, FUNC6(c->cstate),
				    &ar->epref, p->state);
			  case VFY_OK:
				break;
			}
			FUNC8(p, SIGP_ADD_PARTY_REJ, 0, m, u);
			return;
		}
		FUNC7(c, u, UNI_CAUSE_MSG_INCOMP,
		    &ar->epref, -1);
		return;
	}

	/* Q.2971: 9.5.3.2.1 last paragraph
	 *         9.5.3.2.2 second to last paragraph
	 * Make the action indicator default.
	 */
	FUNC4(c->uni, &ar->epref);
	if (!FUNC1(ar->epref))
		FUNC10(c->uni, UNI_IE_EPREF);
	(void)FUNC13(c->uni, u->u.hdr.act);

  clear:
	FUNC14(c->uni);
	FUNC3(c);

  ignore:
	FUNC11(m);
	FUNC2(u);
}