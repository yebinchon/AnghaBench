#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct iapp_hdr {void* length; void* identifier; int /*<<< orphan*/  command; int /*<<< orphan*/  version; } ;
struct TYPE_4__ {int /*<<< orphan*/  s_addr; } ;
struct iapp_data {int /*<<< orphan*/  udp_sock; TYPE_2__ multicast; int /*<<< orphan*/  identifier; } ;
struct iapp_add_notify {void* seq_num; int /*<<< orphan*/  mac_addr; scalar_t__ reserved; int /*<<< orphan*/  addr_len; } ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  IAPP_CMD_ADD_notify ; 
 int /*<<< orphan*/  IAPP_UDP_PORT ; 
 int /*<<< orphan*/  IAPP_VERSION ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  errno ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct iapp_data *iapp, u8 *mac_addr, u16 seq_num)
{
	char buf[128];
	struct iapp_hdr *hdr;
	struct iapp_add_notify *add;
	struct sockaddr_in addr;

	/* Send IAPP ADD-notify to remove possible association from other APs
	 */

	hdr = (struct iapp_hdr *) buf;
	hdr->version = IAPP_VERSION;
	hdr->command = IAPP_CMD_ADD_notify;
	hdr->identifier = FUNC0(iapp->identifier++);
	hdr->length = FUNC0(sizeof(*hdr) + sizeof(*add));

	add = (struct iapp_add_notify *) (hdr + 1);
	add->addr_len = ETH_ALEN;
	add->reserved = 0;
	FUNC2(add->mac_addr, mac_addr, ETH_ALEN);

	add->seq_num = FUNC0(seq_num);
	
	FUNC3(&addr, 0, sizeof(addr));
	addr.sin_family = AF_INET;
	addr.sin_addr.s_addr = iapp->multicast.s_addr;
	addr.sin_port = FUNC1(IAPP_UDP_PORT);
	if (FUNC4(iapp->udp_sock, buf, (char *) (add + 1) - buf, 0,
		   (struct sockaddr *) &addr, sizeof(addr)) < 0)
		FUNC6(MSG_INFO, "sendto[IAPP-ADD]: %s", FUNC5(errno));
}