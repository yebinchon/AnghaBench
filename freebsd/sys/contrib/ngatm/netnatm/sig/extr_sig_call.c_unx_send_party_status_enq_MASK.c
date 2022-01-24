#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  epref; } ;
struct TYPE_6__ {TYPE_1__ status_enq; } ;
struct uni_all {TYPE_2__ u; } ;
struct call {int se_active; TYPE_3__* uni; int /*<<< orphan*/  stat_epref; } ;
struct TYPE_7__ {int /*<<< orphan*/  timer322; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGC_SEND_STATUS_ENQ ; 
 int /*<<< orphan*/  SIG_CALL ; 
 int /*<<< orphan*/  FUNC0 (struct call*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uni_all*) ; 
 int /*<<< orphan*/  t322 ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,struct call*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct uni_all*) ; 
 int /*<<< orphan*/  FUNC3 (struct uni_all*,TYPE_3__*) ; 

__attribute__((used)) static void
FUNC4(struct call *c, struct uni_all *u)
{
	if (c->se_active) {
		FUNC2(c->uni, SIG_CALL, c, NULL,
		    SIGC_SEND_STATUS_ENQ, 0, NULL, u);
		return;
	}

	c->stat_epref = u->u.status_enq.epref;
	(void)FUNC3(u, c->uni);
	FUNC1(u);

	FUNC0(c, t322, c->uni->timer322);
	c->se_active = 1;
}