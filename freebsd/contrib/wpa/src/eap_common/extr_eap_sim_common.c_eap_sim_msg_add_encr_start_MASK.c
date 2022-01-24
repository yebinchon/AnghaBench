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
struct eap_sim_msg {int iv; int encr; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_SIM_IV_LEN ; 
 int /*<<< orphan*/ * FUNC0 (struct eap_sim_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct eap_sim_msg *msg, u8 attr_iv,
			       u8 attr_encr)
{
	u8 *pos = FUNC0(msg, attr_iv, 0, NULL, EAP_SIM_IV_LEN);
	if (pos == NULL)
		return -1;
	msg->iv = (pos - FUNC2(msg->buf)) + 4;
	if (FUNC1(FUNC3(msg->buf) + msg->iv,
			     EAP_SIM_IV_LEN)) {
		msg->iv = 0;
		return -1;
	}

	pos = FUNC0(msg, attr_encr, 0, NULL, 0);
	if (pos == NULL) {
		msg->iv = 0;
		return -1;
	}
	msg->encr = pos - FUNC2(msg->buf);

	return 0;
}