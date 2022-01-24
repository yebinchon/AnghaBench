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
struct TYPE_5__ {int /*<<< orphan*/  epref; } ;
struct TYPE_6__ {scalar_t__ act; } ;
struct TYPE_7__ {TYPE_1__ unknown; TYPE_2__ hdr; } ;
struct uni_all {TYPE_3__ u; int /*<<< orphan*/  mtype; } ;
struct call {TYPE_4__* uni; } ;
struct TYPE_8__ {int /*<<< orphan*/  cx; int /*<<< orphan*/  cause; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UNI_CAUSE_LOC_USER ; 
 int /*<<< orphan*/  UNI_CAUSE_MTYPE_NIMPL ; 
 int /*<<< orphan*/  FUNC2 (struct uni_all*) ; 
 scalar_t__ UNI_MSGACT_CLEAR ; 
 scalar_t__ UNI_MSGACT_IGNORE ; 
 int /*<<< orphan*/  FUNC3 (struct call*) ; 
 int /*<<< orphan*/  FUNC4 (struct call*,struct uni_all*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct uni_msg*,struct uni_all*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct uni_msg*) ; 

__attribute__((used)) static void
FUNC7(struct call *c, struct uni_msg *m, struct uni_all *u)
{
	/*
	 * Unrecognized message. Cannot call verify here, because
	 * it doesn't know about unrecognized messages.
	 */
	if (u->u.hdr.act == UNI_MSGACT_CLEAR) {
		FUNC1(c->uni->cause, UNI_CAUSE_LOC_USER,
		    UNI_CAUSE_MTYPE_NIMPL);
		FUNC0(c->uni->cause, u->mtype);
		FUNC3(c);
	} else if(u->u.hdr.act == UNI_MSGACT_IGNORE) {
		;
	} else {
		(void)FUNC5(m, u, &c->uni->cx);
		FUNC4(c, u, UNI_CAUSE_MTYPE_NIMPL,
		    &u->u.unknown.epref, -1);
	}
	FUNC6(m);
	FUNC2(u);
}