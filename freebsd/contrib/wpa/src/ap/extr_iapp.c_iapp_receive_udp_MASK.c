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
struct TYPE_4__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct iapp_hdr {int version; int command; int /*<<< orphan*/  identifier; int /*<<< orphan*/  length; } ;
struct TYPE_3__ {scalar_t__ s_addr; } ;
struct iapp_data {int /*<<< orphan*/  hapd; TYPE_1__ own; int /*<<< orphan*/  udp_sock; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  from ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  HOSTAPD_LEVEL_DEBUG ; 
 int /*<<< orphan*/  HOSTAPD_MODULE_IAPP ; 
#define  IAPP_CMD_ADD_notify 129 
#define  IAPP_CMD_MOVE_notify 128 
 int IAPP_VERSION ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct iapp_data*,struct sockaddr_in*,struct iapp_hdr*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,...) ; 

__attribute__((used)) static void FUNC7(int sock, void *eloop_ctx, void *sock_ctx)
{
	struct iapp_data *iapp = eloop_ctx;
	int len, hlen;
	unsigned char buf[128];
	struct sockaddr_in from;
	socklen_t fromlen;
	struct iapp_hdr *hdr;

	/* Handle incoming IAPP frames (over UDP/IP) */

	fromlen = sizeof(from);
	len = FUNC4(iapp->udp_sock, buf, sizeof(buf), 0,
		       (struct sockaddr *) &from, &fromlen);
	if (len < 0) {
		FUNC6(MSG_INFO, "iapp_receive_udp - recvfrom: %s",
			   FUNC5(errno));
		return;
	}

	if (from.sin_addr.s_addr == iapp->own.s_addr)
		return; /* ignore own IAPP messages */

	FUNC1(iapp->hapd, NULL, HOSTAPD_MODULE_IAPP,
		       HOSTAPD_LEVEL_DEBUG,
		       "Received %d byte IAPP frame from %s%s\n",
		       len, FUNC3(from.sin_addr),
		       len < (int) sizeof(*hdr) ? " (too short)" : "");

	if (len < (int) sizeof(*hdr))
		return;

	hdr = (struct iapp_hdr *) buf;
	hlen = FUNC0(hdr->length);
	FUNC1(iapp->hapd, NULL, HOSTAPD_MODULE_IAPP,
		       HOSTAPD_LEVEL_DEBUG,
		       "RX: version=%d command=%d id=%d len=%d\n",
		       hdr->version, hdr->command,
		       FUNC0(hdr->identifier), hlen);
	if (hdr->version != IAPP_VERSION) {
		FUNC6(MSG_INFO, "Dropping IAPP frame with unknown version %d",
			   hdr->version);
		return;
	}
	if (hlen > len) {
		FUNC6(MSG_INFO, "Underflow IAPP frame (hlen=%d len=%d)",
			   hlen, len);
		return;
	}
	if (hlen < len) {
		FUNC6(MSG_INFO, "Ignoring %d extra bytes from IAPP frame",
			   len - hlen);
		len = hlen;
	}

	switch (hdr->command) {
	case IAPP_CMD_ADD_notify:
		FUNC2(iapp, &from, hdr, len - sizeof(*hdr));
		break;
	case IAPP_CMD_MOVE_notify:
		/* TODO: MOVE is using TCP; so move this to TCP handler once it
		 * is implemented.. */
		/* IAPP-MOVE.indication(MAC Address, New BSSID,
		 * Sequence Number, AP Address, Context Block) */
		/* TODO: process */
		break;
	default:
		FUNC6(MSG_INFO, "Unknown IAPP command %d", hdr->command);
		break;
	}
}