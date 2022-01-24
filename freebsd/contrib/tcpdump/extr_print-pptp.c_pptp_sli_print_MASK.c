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
struct pptp_msg_sli {int /*<<< orphan*/  recv_accm; int /*<<< orphan*/  send_accm; int /*<<< orphan*/  reserved1; int /*<<< orphan*/  peer_call_id; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static void
FUNC4(netdissect_options *ndo,
               const u_char *dat)
{
	const struct pptp_msg_sli *ptr = (const struct pptp_msg_sli *)dat;

	FUNC2(ptr->peer_call_id);
	FUNC3(ndo, &ptr->peer_call_id);
	FUNC2(ptr->reserved1);
	FUNC2(ptr->send_accm);
	FUNC1((ndo, " SEND_ACCM(0x%08x)", FUNC0(&ptr->send_accm)));
	FUNC2(ptr->recv_accm);
	FUNC1((ndo, " RECV_ACCM(0x%08x)", FUNC0(&ptr->recv_accm)));

	return;

trunc:
	FUNC1((ndo, "%s", tstr));
}