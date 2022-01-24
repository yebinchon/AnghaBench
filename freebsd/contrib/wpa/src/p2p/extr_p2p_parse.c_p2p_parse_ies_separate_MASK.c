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
struct p2p_message {void* p2p_attributes; void* wps_attributes; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  FUNC0 (struct p2p_message*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct p2p_message*) ; 
 scalar_t__ FUNC2 (void*,struct p2p_message*) ; 
 scalar_t__ FUNC3 (void*,struct p2p_message*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC6 (int /*<<< orphan*/  const*,size_t) ; 

int FUNC7(const u8 *wsc, size_t wsc_len, const u8 *p2p,
			   size_t p2p_len, struct p2p_message *msg)
{
	FUNC0(msg, 0, sizeof(*msg));

	msg->wps_attributes = FUNC6(wsc, wsc_len);
	if (msg->wps_attributes &&
	    FUNC3(msg->wps_attributes, msg)) {
		FUNC1(msg);
		return -1;
	}

	msg->p2p_attributes = FUNC6(p2p, p2p_len);
	if (msg->p2p_attributes &&
	    FUNC2(msg->p2p_attributes, msg)) {
		FUNC5(MSG_DEBUG, "P2P: Failed to parse P2P IE data");
		if (msg->p2p_attributes)
			FUNC4(MSG_MSGDUMP, "P2P: P2P IE data",
					msg->p2p_attributes);
		FUNC1(msg);
		return -1;
	}

	return 0;
}