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
struct pptp_msg_ocrp {int /*<<< orphan*/  phy_chan_id; int /*<<< orphan*/  pkt_proc_delay; int /*<<< orphan*/  recv_winsiz; int /*<<< orphan*/  conn_speed; int /*<<< orphan*/  cause_code; int /*<<< orphan*/  err_code; int /*<<< orphan*/  result_code; int /*<<< orphan*/  peer_call_id; int /*<<< orphan*/  call_id; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PPTP_CTRL_MSG_TYPE_OCRP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static void
FUNC11(netdissect_options *ndo,
                const u_char *dat)
{
	const struct pptp_msg_ocrp *ptr = (const struct pptp_msg_ocrp *)dat;

	FUNC1(ptr->call_id);
	FUNC2(ndo, &ptr->call_id);
	FUNC1(ptr->peer_call_id);
	FUNC6(ndo, &ptr->peer_call_id);
	FUNC1(ptr->result_code);
	FUNC10(ndo, &ptr->result_code, PPTP_CTRL_MSG_TYPE_OCRP);
	FUNC1(ptr->err_code);
	FUNC5(ndo, &ptr->err_code);
	FUNC1(ptr->cause_code);
	FUNC3(ndo, &ptr->cause_code);
	FUNC1(ptr->conn_speed);
	FUNC4(ndo, &ptr->conn_speed);
	FUNC1(ptr->recv_winsiz);
	FUNC9(ndo, &ptr->recv_winsiz);
	FUNC1(ptr->pkt_proc_delay);
	FUNC8(ndo, &ptr->pkt_proc_delay);
	FUNC1(ptr->phy_chan_id);
	FUNC7(ndo, &ptr->phy_chan_id);

	return;

trunc:
	FUNC0((ndo, "%s", tstr));
}