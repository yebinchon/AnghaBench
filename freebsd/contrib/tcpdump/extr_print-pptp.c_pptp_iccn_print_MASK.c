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
struct pptp_msg_iccn {int /*<<< orphan*/  framing_type; int /*<<< orphan*/  pkt_proc_delay; int /*<<< orphan*/  recv_winsiz; int /*<<< orphan*/  conn_speed; int /*<<< orphan*/  reserved1; int /*<<< orphan*/  peer_call_id; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static void
FUNC7(netdissect_options *ndo,
                const u_char *dat)
{
	const struct pptp_msg_iccn *ptr = (const struct pptp_msg_iccn *)dat;

	FUNC1(ptr->peer_call_id);
	FUNC4(ndo, &ptr->peer_call_id);
	FUNC1(ptr->reserved1);
	FUNC1(ptr->conn_speed);
	FUNC2(ndo, &ptr->conn_speed);
	FUNC1(ptr->recv_winsiz);
	FUNC6(ndo, &ptr->recv_winsiz);
	FUNC1(ptr->pkt_proc_delay);
	FUNC5(ndo, &ptr->pkt_proc_delay);
	FUNC1(ptr->framing_type);
	FUNC3(ndo, &ptr->framing_type);

	return;

trunc:
	FUNC0((ndo, "%s", tstr));
}