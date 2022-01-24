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
struct uni_ie_epref {int /*<<< orphan*/  flag; int /*<<< orphan*/  epref; } ;
struct uni_cref {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  epstate; int /*<<< orphan*/  epref; int /*<<< orphan*/  cause; int /*<<< orphan*/  callstate; } ;
struct TYPE_4__ {TYPE_1__ status; } ;
struct uni_all {TYPE_2__ u; } ;
struct uni {int /*<<< orphan*/  cause; } ;
typedef  enum uni_epstate { ____Placeholder_uni_epstate } uni_epstate ;
typedef  enum uni_callstate { ____Placeholder_uni_callstate } uni_callstate ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct uni_ie_epref) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct uni_all*,int /*<<< orphan*/ ,struct uni_cref*) ; 
 struct uni_all* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct uni_all*) ; 
 int /*<<< orphan*/  UNI_STATUS ; 
 int /*<<< orphan*/  FUNC7 (struct uni_all*,struct uni*) ; 
 int /*<<< orphan*/  FUNC8 (struct uni*) ; 

void
FUNC9(struct uni *uni, struct uni_cref *cref,
    enum uni_callstate cs, struct uni_ie_epref *epref,
    enum uni_epstate ps)
{
	struct uni_all *resp;

	if ((resp = FUNC5()) == NULL)
		return;

	FUNC8(uni);

	FUNC4(resp, UNI_STATUS, cref);
	FUNC1(resp->u.status.callstate, cs);
	resp->u.status.cause = uni->cause;
	if (epref && FUNC0(*epref)) {
		FUNC2(resp->u.status.epref, epref->epref, !epref->flag);
		FUNC3(resp->u.status.epstate, ps);
	}

	FUNC7(resp, uni);

	FUNC6(resp);
}