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
struct p2p_message {int /*<<< orphan*/  dialog_token; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct p2p_message*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/  const*,size_t,struct p2p_message*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC3(const u8 *data, size_t len, struct p2p_message *msg)
{
	FUNC0(msg, 0, sizeof(*msg));
	FUNC2(MSG_DEBUG, "P2P: Parsing the received message");
	if (len < 1) {
		FUNC2(MSG_DEBUG, "P2P: No Dialog Token in the message");
		return -1;
	}
	msg->dialog_token = data[0];
	FUNC2(MSG_DEBUG, "P2P: * Dialog Token: %d", msg->dialog_token);

	return FUNC1(data + 1, len - 1, msg);
}