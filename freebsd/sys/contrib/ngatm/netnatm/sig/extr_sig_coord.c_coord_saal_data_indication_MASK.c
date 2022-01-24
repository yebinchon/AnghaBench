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
struct uni_msg {int dummy; } ;
struct TYPE_7__ {scalar_t__ cref; } ;
struct TYPE_5__ {TYPE_3__ cref; } ;
struct TYPE_6__ {TYPE_1__ hdr; } ;
struct uni_all {TYPE_2__ u; } ;
struct TYPE_8__ {scalar_t__ q2932; } ;
struct uni {TYPE_4__ cx; int /*<<< orphan*/  cause; } ;
struct call {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ CALL_COBI ; 
 scalar_t__ CREF_DUMMY ; 
 scalar_t__ CREF_GLOBAL ; 
 struct uni_all* FUNC0 () ; 
 int /*<<< orphan*/  UNI_FAC_COORD ; 
 int /*<<< orphan*/  FUNC1 (struct uni_all*) ; 
 int /*<<< orphan*/  FUNC2 (struct uni*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct call*,struct uni_msg*,struct uni_all*) ; 
 int /*<<< orphan*/  FUNC4 (struct call*,struct uni_msg*,struct uni_all*) ; 
 int /*<<< orphan*/  FUNC5 (struct uni*,struct uni_msg*,struct uni_all*) ; 
 int /*<<< orphan*/  FUNC6 (struct uni*,struct uni_msg*,struct uni_all*) ; 
 int /*<<< orphan*/  FUNC7 (struct uni*,struct uni_msg*,struct uni_all*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (struct uni_msg*,struct uni_all*,TYPE_4__*) ; 
 struct call* FUNC10 (struct uni*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (struct uni_msg*) ; 

__attribute__((used)) static void
FUNC12(struct uni *uni, struct uni_msg *m)
{
	struct uni_all *u;
	struct call *c;

	FUNC8(&uni->cause, 0, sizeof(uni->cause));
	if ((u = FUNC0()) == NULL) {
		FUNC11(m);
		return;
	}
	if (FUNC9(m, u, &uni->cx)) {
		FUNC2(uni, UNI_FAC_COORD, 2, "bogus message - ignored");
		FUNC11(m);
		FUNC1(u);
		return;
	}
	if (u->u.hdr.cref.cref == CREF_DUMMY) {
		if (uni->cx.q2932) {
			FUNC5(uni, m, u);
		} else {
			FUNC2(uni, UNI_FAC_COORD, 2, "dummy cref - ignored");
			FUNC1(u);
			FUNC11(m);
		}
		return;
	}

	if (u->u.hdr.cref.cref == CREF_GLOBAL)
		FUNC6(uni, m, u);
	else if ((c = FUNC10(uni, &u->u.hdr.cref)) == NULL)
		FUNC7(uni, m, u);
	else if (c->type == CALL_COBI)
		FUNC4(c, m, u);
	else
		FUNC3(c, m, u);
}