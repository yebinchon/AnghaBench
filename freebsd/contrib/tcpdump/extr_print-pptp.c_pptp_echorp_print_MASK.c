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
struct pptp_msg_echorp {int /*<<< orphan*/  reserved1; int /*<<< orphan*/  err_code; int /*<<< orphan*/  result_code; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PPTP_CTRL_MSG_TYPE_ECHORP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static void
FUNC5(netdissect_options *ndo,
                  const u_char *dat)
{
	const struct pptp_msg_echorp *ptr = (const struct pptp_msg_echorp *)dat;

	FUNC1(ptr->id);
	FUNC3(ndo, &ptr->id);
	FUNC1(ptr->result_code);
	FUNC4(ndo, &ptr->result_code, PPTP_CTRL_MSG_TYPE_ECHORP);
	FUNC1(ptr->err_code);
	FUNC2(ndo, &ptr->err_code);
	FUNC1(ptr->reserved1);

	return;

trunc:
	FUNC0((ndo, "%s", tstr));
}