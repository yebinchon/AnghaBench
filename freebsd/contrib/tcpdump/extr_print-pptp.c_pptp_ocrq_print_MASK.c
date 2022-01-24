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
struct pptp_msg_ocrq {int /*<<< orphan*/ * subaddr; int /*<<< orphan*/ * phone_no; int /*<<< orphan*/ * reserved1; int /*<<< orphan*/ * phone_no_len; int /*<<< orphan*/ * pkt_proc_delay; int /*<<< orphan*/ * recv_winsiz; int /*<<< orphan*/ * framing_type; int /*<<< orphan*/ * bearer_type; int /*<<< orphan*/ * max_bps; int /*<<< orphan*/ * min_bps; int /*<<< orphan*/ * call_ser; int /*<<< orphan*/ * call_id; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static void
FUNC11(netdissect_options *ndo,
                const u_char *dat)
{
	const struct pptp_msg_ocrq *ptr = (const struct pptp_msg_ocrq *)dat;

	FUNC3(ptr->call_id);
	FUNC5(ndo, &ptr->call_id);
	FUNC3(ptr->call_ser);
	FUNC6(ndo, &ptr->call_ser);
	FUNC3(ptr->min_bps);
	FUNC2((ndo, " MIN_BPS(%u)", FUNC1(&ptr->min_bps)));
	FUNC3(ptr->max_bps);
	FUNC2((ndo, " MAX_BPS(%u)", FUNC1(&ptr->max_bps)));
	FUNC3(ptr->bearer_type);
	FUNC4(ndo, &ptr->bearer_type);
	FUNC3(ptr->framing_type);
	FUNC7(ndo, &ptr->framing_type);
	FUNC3(ptr->recv_winsiz);
	FUNC9(ndo, &ptr->recv_winsiz);
	FUNC3(ptr->pkt_proc_delay);
	FUNC8(ndo, &ptr->pkt_proc_delay);
	FUNC3(ptr->phone_no_len);
	FUNC2((ndo, " PHONE_NO_LEN(%u)", FUNC0(&ptr->phone_no_len)));
	FUNC3(ptr->reserved1);
	FUNC3(ptr->phone_no);
	FUNC2((ndo, " PHONE_NO(%.64s)", ptr->phone_no));
	FUNC3(ptr->subaddr);
	FUNC10(ndo, &ptr->subaddr[0]);

	return;

trunc:
	FUNC2((ndo, "%s", tstr));
}