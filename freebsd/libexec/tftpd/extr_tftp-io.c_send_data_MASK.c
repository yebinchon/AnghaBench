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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  u_short ;
struct tftphdr {int /*<<< orphan*/  th_data; void* th_block; void* th_opcode; } ;

/* Variables and functions */
 scalar_t__ DATA ; 
 int DEBUG_PACKETS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int MAXPKTSIZE ; 
 int debug ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int,scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__,int) ; 

int
FUNC5(int peer, uint16_t block, char *data, int size)
{
	char buf[MAXPKTSIZE];
	struct tftphdr *pkt;
	int n;

	if (debug&DEBUG_PACKETS)
		FUNC4(LOG_DEBUG, "Sending DATA packet %d of %d bytes",
			block, size);

	FUNC0("send_data", 0);

	pkt = (struct tftphdr *)buf;

	pkt->th_opcode = FUNC1((u_short)DATA);
	pkt->th_block = FUNC1((u_short)block);
	FUNC2(pkt->th_data, data, size);

	n = FUNC3(peer, block, (char *)pkt, size + 4);
	return (n);
}