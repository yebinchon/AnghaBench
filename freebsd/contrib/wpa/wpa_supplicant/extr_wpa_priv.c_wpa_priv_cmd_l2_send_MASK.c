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
typedef  int /*<<< orphan*/  u16 ;
struct wpa_priv_interface {int /*<<< orphan*/ ** l2; int /*<<< orphan*/ * l2_addr; int /*<<< orphan*/ * l2_addr_len; } ;
struct sockaddr_un {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int WPA_PRIV_MAX_L2 ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct sockaddr_un*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct wpa_priv_interface *iface,
				 struct sockaddr_un *from, socklen_t fromlen,
				 void *buf, size_t len)
{
	u8 *dst_addr;
	u16 proto;
	int res;
	int idx;

	for (idx = 0; idx < WPA_PRIV_MAX_L2; idx++) {
		if (iface->l2_addr_len[idx] == fromlen &&
		    FUNC1(&iface->l2_addr[idx], from, fromlen) == 0)
			break;
	}
	if (idx == WPA_PRIV_MAX_L2) {
		FUNC3(MSG_DEBUG,
			   "No registered l2_packet socket found for send request");
		return;
	}

	if (iface->l2[idx] == NULL)
		return;

	if (len < ETH_ALEN + 2) {
		FUNC3(MSG_DEBUG, "Too short L2 send packet (len=%lu)",
			   (unsigned long) len);
		return;
	}

	dst_addr = buf;
	FUNC2(&proto, buf + ETH_ALEN, 2);

	if (!FUNC4(proto)) {
		FUNC3(MSG_DEBUG, "Refused l2_packet send for ethertype "
			   "0x%x", proto);
		return;
	}

	res = FUNC0(iface->l2[idx], dst_addr, proto,
			     buf + ETH_ALEN + 2, len - ETH_ALEN - 2);
	FUNC3(MSG_DEBUG, "L2 send[idx=%d]: res=%d", idx, res);
}