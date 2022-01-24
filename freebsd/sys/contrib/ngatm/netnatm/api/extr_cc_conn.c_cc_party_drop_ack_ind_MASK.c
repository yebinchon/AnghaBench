#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  epref; } ;
struct uni_drop_party {int /*<<< orphan*/  cause; TYPE_1__ epref; } ;
struct TYPE_5__ {int /*<<< orphan*/  epref; } ;
struct ccparty {int state; TYPE_2__ epref; } ;
struct ccconn {TYPE_3__* user; } ;
struct TYPE_6__ {int /*<<< orphan*/ * cause; } ;

/* Variables and functions */
 size_t CONN_SIG_DROP_PARTY_ACK_IND ; 
#define  PARTY_ACTIVE 132 
#define  PARTY_ADD_WAIT_ACK 131 
#define  PARTY_DROP_WAIT_ACK 130 
 int /*<<< orphan*/  PARTY_WAIT_DESTROY ; 
#define  PARTY_WAIT_SETUP_COMPL 129 
#define  PARTY_WAIT_SETUP_CONF 128 
 int /*<<< orphan*/  USER_SIG_ADD_PARTY_REJ ; 
 int /*<<< orphan*/  USER_SIG_DROP_PARTY_IND ; 
 int /*<<< orphan*/  USER_SIG_DROP_PARTY_OK ; 
 int /*<<< orphan*/ * cc_conn_sigtab ; 
 struct ccparty* FUNC0 (struct ccconn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ccparty*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (struct ccparty*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * ptab ; 

__attribute__((used)) static void
FUNC5(struct ccconn *conn,
    const struct uni_drop_party *drop)
{
	struct ccparty *party;

	party = FUNC0(conn, drop->epref.epref);
	if (party == NULL) {
		FUNC1(party, "no party for %s",
		    cc_conn_sigtab[CONN_SIG_DROP_PARTY_ACK_IND]);
		return;
	}
	switch (party->state) {

	  case PARTY_ACTIVE:			/* P1 */
		FUNC4(&conn->user->cause[1], 0, sizeof(conn->user->cause[1]));
		conn->user->cause[0] = drop->cause;
		FUNC2(party, PARTY_WAIT_DESTROY);
		FUNC3(conn->user, USER_SIG_DROP_PARTY_IND,
		    NULL, party->epref.epref);
		break;

	  case PARTY_ADD_WAIT_ACK:		/* P4 */
		FUNC4(&conn->user->cause[1], 0, sizeof(conn->user->cause[1]));
		conn->user->cause[0] = drop->cause;
		FUNC2(party, PARTY_WAIT_DESTROY);
		FUNC3(conn->user, USER_SIG_ADD_PARTY_REJ,
		    NULL, party->epref.epref);
		break;

	  case PARTY_DROP_WAIT_ACK:		/* P6 */
		FUNC2(party, PARTY_WAIT_DESTROY);
		FUNC3(conn->user, USER_SIG_DROP_PARTY_OK, NULL, 0);
		break;

	  case PARTY_WAIT_SETUP_COMPL:		/* P8 */
	  case PARTY_WAIT_SETUP_CONF:		/* P10 */
		FUNC2(party, PARTY_WAIT_DESTROY);
		break;

	  default:
		FUNC1(party, "bad state=%s for signal=%s",
		    ptab[party->state],
		    cc_conn_sigtab[CONN_SIG_DROP_PARTY_ACK_IND]);
		break;
	}
}