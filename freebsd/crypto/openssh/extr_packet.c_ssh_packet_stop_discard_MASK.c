#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ssh {struct session_state* state; } ;
struct TYPE_2__ {int /*<<< orphan*/  seqnr; } ;
struct session_state {size_t packet_discard_mac_already; int /*<<< orphan*/  incoming_packet; TYPE_1__ p_read; scalar_t__ packet_discard_mac; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 size_t PACKET_MAX_SIZE ; 
 int SSH_ERR_MAC_INVALID ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ssh*) ; 
 int /*<<< orphan*/  FUNC4 (struct ssh*) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,int) ; 

int
FUNC8(struct ssh *ssh)
{
	struct session_state *state = ssh->state;
	int r;

	if (state->packet_discard_mac) {
		char buf[1024];
		size_t dlen = PACKET_MAX_SIZE;

		if (dlen > state->packet_discard_mac_already)
			dlen -= state->packet_discard_mac_already;
		FUNC2(buf, 'a', sizeof(buf));
		while (FUNC5(state->incoming_packet) < dlen)
			if ((r = FUNC7(state->incoming_packet, buf,
			    sizeof(buf))) != 0)
				return r;
		(void) FUNC1(state->packet_discard_mac,
		    state->p_read.seqnr,
		    FUNC6(state->incoming_packet), dlen,
		    NULL, 0);
	}
	FUNC0("Finished discarding for %.200s port %d",
	    FUNC3(ssh), FUNC4(ssh));
	return SSH_ERR_MAC_INVALID;
}