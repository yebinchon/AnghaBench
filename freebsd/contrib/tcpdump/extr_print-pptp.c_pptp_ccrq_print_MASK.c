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
struct pptp_msg_ccrq {int /*<<< orphan*/  reserved1; int /*<<< orphan*/  call_id; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static void
FUNC3(netdissect_options *ndo,
                const u_char *dat)
{
	const struct pptp_msg_ccrq *ptr = (const struct pptp_msg_ccrq *)dat;

	FUNC1(ptr->call_id);
	FUNC2(ndo, &ptr->call_id);
	FUNC1(ptr->reserved1);

	return;

trunc:
	FUNC0((ndo, "%s", tstr));
}