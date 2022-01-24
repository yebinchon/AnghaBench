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
struct pptp_msg_icrq {int /*<<< orphan*/ * subaddr; int /*<<< orphan*/ * dialing_no; int /*<<< orphan*/ * dialed_no; int /*<<< orphan*/ * dialing_no_len; int /*<<< orphan*/ * dialed_no_len; int /*<<< orphan*/ * phy_chan_id; int /*<<< orphan*/ * bearer_type; int /*<<< orphan*/ * call_ser; int /*<<< orphan*/ * call_id; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static void
FUNC8(netdissect_options *ndo,
                const u_char *dat)
{
	const struct pptp_msg_icrq *ptr = (const struct pptp_msg_icrq *)dat;

	FUNC2(ptr->call_id);
	FUNC4(ndo, &ptr->call_id);
	FUNC2(ptr->call_ser);
	FUNC5(ndo, &ptr->call_ser);
	FUNC2(ptr->bearer_type);
	FUNC3(ndo, &ptr->bearer_type);
	FUNC2(ptr->phy_chan_id);
	FUNC6(ndo, &ptr->phy_chan_id);
	FUNC2(ptr->dialed_no_len);
	FUNC1((ndo, " DIALED_NO_LEN(%u)", FUNC0(&ptr->dialed_no_len)));
	FUNC2(ptr->dialing_no_len);
	FUNC1((ndo, " DIALING_NO_LEN(%u)", FUNC0(&ptr->dialing_no_len)));
	FUNC2(ptr->dialed_no);
	FUNC1((ndo, " DIALED_NO(%.64s)", ptr->dialed_no));
	FUNC2(ptr->dialing_no);
	FUNC1((ndo, " DIALING_NO(%.64s)", ptr->dialing_no));
	FUNC2(ptr->subaddr);
	FUNC7(ndo, &ptr->subaddr[0]);

	return;

trunc:
	FUNC1((ndo, "%s", tstr));
}