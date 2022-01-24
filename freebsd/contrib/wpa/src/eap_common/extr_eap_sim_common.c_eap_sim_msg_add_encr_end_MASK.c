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
struct eap_sim_msg {scalar_t__ iv; int encr; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__,size_t*,size_t) ; 
 int /*<<< orphan*/ * FUNC1 (struct eap_sim_msg*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 size_t* FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct eap_sim_msg *msg, u8 *k_encr, int attr_pad)
{
	size_t encr_len;

	if (msg == NULL || k_encr == NULL || msg->iv == 0 || msg->encr == 0)
		return -1;

	encr_len = FUNC5(msg->buf) - msg->encr - 4;
	if (encr_len % 16) {
		u8 *pos;
		int pad_len = 16 - (encr_len % 16);
		if (pad_len < 4) {
			FUNC3(MSG_WARNING, "EAP-SIM: "
				   "eap_sim_msg_add_encr_end - invalid pad_len"
				   " %d", pad_len);
			return -1;
		}
		FUNC3(MSG_DEBUG, "   *AT_PADDING");
		pos = FUNC1(msg, attr_pad, 0, NULL, pad_len - 4);
		if (pos == NULL)
			return -1;
		FUNC2(pos + 4, 0, pad_len - 4);
		encr_len += pad_len;
	}
	FUNC3(MSG_DEBUG, "   (AT_ENCR_DATA data len %lu)",
		   (unsigned long) encr_len);
	FUNC6(msg->buf)[msg->encr + 1] = encr_len / 4 + 1;
	return FUNC0(k_encr, FUNC4(msg->buf) + msg->iv,
				   FUNC6(msg->buf) + msg->encr + 4,
				   encr_len);
}