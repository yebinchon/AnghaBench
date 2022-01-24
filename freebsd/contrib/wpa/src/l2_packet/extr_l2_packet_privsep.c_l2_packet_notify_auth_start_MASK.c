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
struct l2_packet_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PRIVSEP_CMD_L2_NOTIFY_AUTH_START ; 
 int /*<<< orphan*/  FUNC0 (struct l2_packet_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC1(struct l2_packet_data *l2)
{
	FUNC0(l2, PRIVSEP_CMD_L2_NOTIFY_AUTH_START, NULL, 0);
}