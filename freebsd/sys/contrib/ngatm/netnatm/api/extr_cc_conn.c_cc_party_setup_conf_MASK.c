#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ccparty {size_t state; } ;
struct TYPE_2__ {int /*<<< orphan*/  epref; } ;
struct ccconn {TYPE_1__ epref; } ;

/* Variables and functions */
 size_t CONN_SIG_SETUP_CONFIRM ; 
 int /*<<< orphan*/  PARTY_ACTIVE ; 
 size_t PARTY_WAIT_SETUP_CONF ; 
 int /*<<< orphan*/ * cc_conn_sigtab ; 
 struct ccparty* FUNC0 (struct ccconn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ccparty*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (struct ccparty*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ptab ; 

__attribute__((used)) static void
FUNC3(struct ccconn *conn)
{
	struct ccparty *party;

	party = FUNC0(conn, conn->epref.epref);
	if (party == NULL) {
		FUNC1(party, "no party for %s",
		    cc_conn_sigtab[CONN_SIG_SETUP_CONFIRM]);
		return;
	}
	if (party->state != PARTY_WAIT_SETUP_CONF) {
		FUNC1(party, "bad state=%s for signal=%s",
		    ptab[party->state], cc_conn_sigtab[CONN_SIG_SETUP_CONFIRM]);
		return;
	}
	FUNC2(party, PARTY_ACTIVE);
}