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
struct pptp_msg_cdn {int /*<<< orphan*/  call_stats; int /*<<< orphan*/  reserved1; int /*<<< orphan*/  cause_code; int /*<<< orphan*/  err_code; int /*<<< orphan*/  result_code; int /*<<< orphan*/  call_id; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PPTP_CTRL_MSG_TYPE_CDN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static void
FUNC6(netdissect_options *ndo,
               const u_char *dat)
{
	const struct pptp_msg_cdn *ptr = (const struct pptp_msg_cdn *)dat;

	FUNC1(ptr->call_id);
	FUNC2(ndo, &ptr->call_id);
	FUNC1(ptr->result_code);
	FUNC5(ndo, &ptr->result_code, PPTP_CTRL_MSG_TYPE_CDN);
	FUNC1(ptr->err_code);
	FUNC4(ndo, &ptr->err_code);
	FUNC1(ptr->cause_code);
	FUNC3(ndo, &ptr->cause_code);
	FUNC1(ptr->reserved1);
	FUNC1(ptr->call_stats);
	FUNC0((ndo, " CALL_STATS(%.128s)", ptr->call_stats));

	return;

trunc:
	FUNC0((ndo, "%s", tstr));
}