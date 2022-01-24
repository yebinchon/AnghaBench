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

/* Variables and functions */
 int /*<<< orphan*/  LINUX_SLL_BROADCAST ; 
 int /*<<< orphan*/  LINUX_SLL_HOST ; 
 int /*<<< orphan*/  LINUX_SLL_MULTICAST ; 
 int /*<<< orphan*/  LINUX_SLL_OTHERHOST ; 
 int /*<<< orphan*/  LINUX_SLL_OUTGOING ; 
#define  PACKET_BROADCAST 132 
#define  PACKET_HOST 131 
#define  PACKET_MULTICAST 130 
#define  PACKET_OTHERHOST 129 
#define  PACKET_OUTGOING 128 
 short FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static short int
FUNC1(short int sll_pkttype)
{
	switch (sll_pkttype) {

	case PACKET_HOST:
		return FUNC0(LINUX_SLL_HOST);

	case PACKET_BROADCAST:
		return FUNC0(LINUX_SLL_BROADCAST);

	case PACKET_MULTICAST:
		return  FUNC0(LINUX_SLL_MULTICAST);

	case PACKET_OTHERHOST:
		return FUNC0(LINUX_SLL_OTHERHOST);

	case PACKET_OUTGOING:
		return FUNC0(LINUX_SLL_OUTGOING);

	default:
		return -1;
	}
}