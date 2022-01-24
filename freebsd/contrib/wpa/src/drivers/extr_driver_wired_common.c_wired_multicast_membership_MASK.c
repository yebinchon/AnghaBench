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
struct packet_mreq {int mr_ifindex; int /*<<< orphan*/  mr_address; int /*<<< orphan*/  mr_alen; int /*<<< orphan*/  mr_type; } ;
typedef  int /*<<< orphan*/  mreq ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  PACKET_ADD_MEMBERSHIP ; 
 int /*<<< orphan*/  PACKET_DROP_MEMBERSHIP ; 
 int /*<<< orphan*/  PACKET_MR_MULTICAST ; 
 int /*<<< orphan*/  SOL_PACKET ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct packet_mreq*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct packet_mreq*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int FUNC5(int sock, int ifindex, const u8 *addr, int add)
{
#ifdef __linux__
	struct packet_mreq mreq;

	if (sock < 0)
		return -1;

	FUNC1(&mreq, 0, sizeof(mreq));
	mreq.mr_ifindex = ifindex;
	mreq.mr_type = PACKET_MR_MULTICAST;
	mreq.mr_alen = ETH_ALEN;
	FUNC0(mreq.mr_address, addr, ETH_ALEN);

	if (FUNC2(sock, SOL_PACKET,
		       add ? PACKET_ADD_MEMBERSHIP : PACKET_DROP_MEMBERSHIP,
		       &mreq, sizeof(mreq)) < 0) {
		FUNC4(MSG_ERROR, "setsockopt: %s", FUNC3(errno));
		return -1;
	}
	return 0;
#else /* __linux__ */
	return -1;
#endif /* __linux__ */
}