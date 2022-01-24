#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct uni_ie_epref {int /*<<< orphan*/  flag; int /*<<< orphan*/  epref; } ;
struct TYPE_3__ {int /*<<< orphan*/  cause; int /*<<< orphan*/  epref; } ;
struct TYPE_4__ {TYPE_1__ drop_party_ack; } ;
struct uni_all {TYPE_2__ u; } ;
struct call {int /*<<< orphan*/  uni; int /*<<< orphan*/  mine; int /*<<< orphan*/  cref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct uni_all*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct uni_all* FUNC3 () ; 
 int /*<<< orphan*/  UNI_CAUSE_LOC_USER ; 
 int /*<<< orphan*/  UNI_DROP_PARTY_ACK ; 
 int /*<<< orphan*/  FUNC4 (struct uni_all*) ; 
 int /*<<< orphan*/  FUNC5 (struct uni_all*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct call *c, struct uni_ie_epref *epref,
    u_int cause)
{
	struct uni_all *msg;

	if ((msg = FUNC3()) == NULL)
		return;

	FUNC2(msg, UNI_DROP_PARTY_ACK, c->cref, !c->mine);
	FUNC1(msg->u.drop_party_ack.epref, epref->epref, !epref->flag);
	FUNC0(msg->u.drop_party_ack.cause, UNI_CAUSE_LOC_USER, cause);
	(void)FUNC5(msg, c->uni);
	FUNC4(msg);
}