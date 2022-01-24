#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct iscsi_bhs_nop_in {int bhsni_flags; int bhsni_initiator_task_tag; int /*<<< orphan*/  bhsni_opcode; } ;
struct icl_pdu {scalar_t__ ip_bhs; } ;
struct cfiscsi_session {scalar_t__ cs_timeout; int /*<<< orphan*/  cs_conn; scalar_t__ cs_login_phase; scalar_t__ cs_waiting_for_ctld; int /*<<< orphan*/  cs_callout; scalar_t__ cs_terminating; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfiscsi_session*,char*,...) ; 
 int /*<<< orphan*/  ISCSI_BHS_OPCODE_NOP_IN ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC4 (struct cfiscsi_session*) ; 
 int hz ; 
 struct icl_pdu* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ login_timeout ; 
 scalar_t__ ping_timeout ; 

__attribute__((used)) static void
FUNC6(void *context)
{
	struct icl_pdu *cp;
	struct iscsi_bhs_nop_in *bhsni;
	struct cfiscsi_session *cs;

	cs = context;

	if (cs->cs_terminating) 
		return;

	FUNC2(&cs->cs_callout, 1 * hz);

	FUNC1(&cs->cs_timeout, 1);

#ifdef ICL_KERNEL_PROXY
	if (cs->cs_waiting_for_ctld || cs->cs_login_phase) {
		if (login_timeout > 0 && cs->cs_timeout > login_timeout) {
			CFISCSI_SESSION_WARN(cs, "login timed out after "
			    "%d seconds; dropping connection", cs->cs_timeout);
			cfiscsi_session_terminate(cs);
		}
		return;
	}
#endif

	if (ping_timeout <= 0) {
		/*
		 * Pings are disabled.  Don't send NOP-In in this case;
		 * user might have disabled pings to work around problems
		 * with certain initiators that can't properly handle
		 * NOP-In, such as iPXE.  Reset the timeout, to avoid
		 * triggering reconnection, should the user decide to
		 * reenable them.
		 */
		cs->cs_timeout = 0;
		return;
	}

	if (cs->cs_timeout >= ping_timeout) {
		FUNC0(cs, "no ping reply (NOP-Out) after %d seconds; "
		    "dropping connection",  ping_timeout);
		FUNC4(cs);
		return;
	}

	/*
	 * If the ping was reset less than one second ago - which means
	 * that we've received some PDU during the last second - assume
	 * the traffic flows correctly and don't bother sending a NOP-Out.
	 *
	 * (It's 2 - one for one second, and one for incrementing is_timeout
	 * earlier in this routine.)
	 */
	if (cs->cs_timeout < 2)
		return;

	cp = FUNC5(cs->cs_conn, M_NOWAIT);
	if (cp == NULL) {
		FUNC0(cs, "failed to allocate memory");
		return;
	}
	bhsni = (struct iscsi_bhs_nop_in *)cp->ip_bhs;
	bhsni->bhsni_opcode = ISCSI_BHS_OPCODE_NOP_IN;
	bhsni->bhsni_flags = 0x80;
	bhsni->bhsni_initiator_task_tag = 0xffffffff;

	FUNC3(cp);
}