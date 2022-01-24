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
typedef  int /*<<< orphan*/  uint16_t ;
struct tftphdr {int /*<<< orphan*/  th_opcode; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ss_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__ peer_sock ; 
 int FUNC3 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int
FUNC7(int peer, uint16_t block, char *pkt, int size)
{
	int i;
	int t = 1;

	for (i = 0; i < 12 ; i++) {
		FUNC0("send_packet", 0);

		if (FUNC3(peer, pkt, size, 0, (struct sockaddr *)&peer_sock,
		    peer_sock.ss_len) == size) {
			if (i)
				FUNC6(LOG_ERR,
				    "%s block %d, attempt %d successful",
		    		    FUNC2(FUNC1(((struct tftphdr *)
				    (pkt))->th_opcode)), block, i);
			return (0);
		}
		FUNC6(LOG_ERR,
		    "%s block %d, attempt %d failed (Error %d: %s)", 
		    FUNC2(FUNC1(((struct tftphdr *)(pkt))->th_opcode)),
		    block, i, errno, FUNC5(errno));
		FUNC4(t);
		if (t < 32)
			t <<= 1;
	}
	FUNC6(LOG_ERR, "send_packet: %s", FUNC5(errno));
	return (1);
}