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
struct uni_cref {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  cause; int /*<<< orphan*/  callstate; } ;
struct TYPE_3__ {TYPE_2__ status; } ;
struct uni_all {TYPE_1__ u; } ;
struct uni {int dummy; } ;
typedef  enum uni_cause { ____Placeholder_uni_cause } uni_cause ;
typedef  enum uni_callstate { ____Placeholder_uni_callstate } uni_callstate ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct uni_all*,int /*<<< orphan*/ ,struct uni_cref*) ; 
 struct uni_all* FUNC4 () ; 
 int /*<<< orphan*/  UNI_CAUSE_LOC_USER ; 
 int /*<<< orphan*/  FUNC5 (struct uni_all*) ; 
 int /*<<< orphan*/  UNI_STATUS ; 
 int /*<<< orphan*/  FUNC6 (struct uni_all*,struct uni*) ; 

void
FUNC7(struct uni *uni, struct uni_cref *cref,
    enum uni_callstate cs, enum uni_cause c1, u_int mtype)
{
	struct uni_all *resp;

	if((resp = FUNC4()) == NULL)
		return;

	FUNC3(resp, UNI_STATUS, cref);
	FUNC1(resp->u.status.callstate, cs);
	FUNC2(resp->u.status.cause, UNI_CAUSE_LOC_USER, c1);
	FUNC0(resp->u.status.cause, mtype);

	(void)FUNC6(resp, uni);

	FUNC5(resp);
}