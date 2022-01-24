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
struct pptp_msg_sccrp {int /*<<< orphan*/ * vendor; int /*<<< orphan*/ * hostname; int /*<<< orphan*/ * firm_rev; int /*<<< orphan*/ * max_channel; int /*<<< orphan*/ * bearer_cap; int /*<<< orphan*/ * framing_cap; int /*<<< orphan*/ * err_code; int /*<<< orphan*/ * result_code; int /*<<< orphan*/ * proto_ver; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PPTP_CTRL_MSG_TYPE_SCCRP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static void
FUNC11(netdissect_options *ndo,
                 const u_char *dat)
{
	const struct pptp_msg_sccrp *ptr = (const struct pptp_msg_sccrp *)dat;

	FUNC1(ptr->proto_ver);
	FUNC8(ndo, &ptr->proto_ver);
	FUNC1(ptr->result_code);
	FUNC9(ndo, &ptr->result_code, PPTP_CTRL_MSG_TYPE_SCCRP);
	FUNC1(ptr->err_code);
	FUNC3(ndo, &ptr->err_code);
	FUNC1(ptr->framing_cap);
	FUNC5(ndo, &ptr->framing_cap);
	FUNC1(ptr->bearer_cap);
	FUNC2(ndo, &ptr->bearer_cap);
	FUNC1(ptr->max_channel);
	FUNC7(ndo, &ptr->max_channel);
	FUNC1(ptr->firm_rev);
	FUNC4(ndo, &ptr->firm_rev);
	FUNC1(ptr->hostname);
	FUNC6(ndo, &ptr->hostname[0]);
	FUNC1(ptr->vendor);
	FUNC10(ndo, &ptr->vendor[0]);

	return;

trunc:
	FUNC0((ndo, "%s", tstr));
}