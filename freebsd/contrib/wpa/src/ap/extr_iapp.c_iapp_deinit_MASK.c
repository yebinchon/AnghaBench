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
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct ip_mreqn {scalar_t__ imr_ifindex; TYPE_1__ imr_address; int /*<<< orphan*/  imr_multiaddr; } ;
struct iapp_data {scalar_t__ udp_sock; scalar_t__ packet_sock; int /*<<< orphan*/  multicast; } ;
typedef  int /*<<< orphan*/  mreq ;

/* Variables and functions */
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  IP_DROP_MEMBERSHIP ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  SOL_IP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (struct iapp_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_mreqn*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ip_mreqn*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC7(struct iapp_data *iapp)
{
	struct ip_mreqn mreq;

	if (iapp == NULL)
		return;

	if (iapp->udp_sock >= 0) {
		FUNC3(&mreq, 0, sizeof(mreq));
		mreq.imr_multiaddr = iapp->multicast;
		mreq.imr_address.s_addr = INADDR_ANY;
		mreq.imr_ifindex = 0;
		if (FUNC4(iapp->udp_sock, SOL_IP, IP_DROP_MEMBERSHIP,
			       &mreq, sizeof(mreq)) < 0) {
			FUNC6(MSG_INFO, "iapp_deinit - setsockopt[UDP,IP_DEL_MEMBERSHIP]: %s",
				   FUNC5(errno));
		}

		FUNC1(iapp->udp_sock);
		FUNC0(iapp->udp_sock);
	}
	if (iapp->packet_sock >= 0) {
		FUNC1(iapp->packet_sock);
		FUNC0(iapp->packet_sock);
	}
	FUNC2(iapp);
}