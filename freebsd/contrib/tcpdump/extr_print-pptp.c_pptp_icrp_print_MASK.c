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
typedef  int /*<<< orphan*/  u_char ;
struct pptp_msg_icrp {int /*<<< orphan*/  reserved1; int /*<<< orphan*/  pkt_proc_delay; int /*<<< orphan*/  recv_winsiz; int /*<<< orphan*/  err_code; int /*<<< orphan*/  result_code; int /*<<< orphan*/  peer_call_id; int /*<<< orphan*/  call_id; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PPTP_CTRL_MSG_TYPE_ICRP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static void
FUNC8(netdissect_options *ndo,
                const u_char *dat)
{
	const struct pptp_msg_icrp *ptr = (const struct pptp_msg_icrp *)dat;

	FUNC1(ptr->call_id);
	FUNC2(ndo, &ptr->call_id);
	FUNC1(ptr->peer_call_id);
	FUNC4(ndo, &ptr->peer_call_id);
	FUNC1(ptr->result_code);
	FUNC7(ndo, &ptr->result_code, PPTP_CTRL_MSG_TYPE_ICRP);
	FUNC1(ptr->err_code);
	FUNC3(ndo, &ptr->err_code);
	FUNC1(ptr->recv_winsiz);
	FUNC6(ndo, &ptr->recv_winsiz);
	FUNC1(ptr->pkt_proc_delay);
	FUNC5(ndo, &ptr->pkt_proc_delay);
	FUNC1(ptr->reserved1);

	return;

trunc:
	FUNC0((ndo, "%s", tstr));
}