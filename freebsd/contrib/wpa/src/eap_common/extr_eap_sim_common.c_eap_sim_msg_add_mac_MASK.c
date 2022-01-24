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
typedef  int /*<<< orphan*/  u8 ;
struct eap_sim_msg {int mac; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_SIM_MAC_LEN ; 
 int /*<<< orphan*/ * FUNC0 (struct eap_sim_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 

u8 * FUNC2(struct eap_sim_msg *msg, u8 attr)
{
	u8 *pos = FUNC0(msg, attr, 0, NULL, EAP_SIM_MAC_LEN);
	if (pos)
		msg->mac = (pos - FUNC1(msg->buf)) + 4;
	return pos;
}