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
struct sta_info {int dummy; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; } ;
struct iapp_hdr {int dummy; } ;
struct iapp_data {int /*<<< orphan*/  hapd; } ;
struct iapp_add_notify {int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  seq_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  HOSTAPD_LEVEL_DEBUG ; 
 int /*<<< orphan*/  HOSTAPD_LEVEL_INFO ; 
 int /*<<< orphan*/  HOSTAPD_MODULE_IAPP ; 
 int /*<<< orphan*/  MSG_INFO ; 
 struct sta_info* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sta_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct iapp_data *iapp,
				    struct sockaddr_in *from,
				    struct iapp_hdr *hdr, int len)
{
	struct iapp_add_notify *add = (struct iapp_add_notify *) (hdr + 1);
	struct sta_info *sta;

	if (len != sizeof(*add)) {
		FUNC6(MSG_INFO, "Invalid IAPP-ADD packet length %d (expected %lu)",
			   len, (unsigned long) sizeof(*add));
		return;
	}

	sta = FUNC0(iapp->hapd, add->mac_addr);

	/* IAPP-ADD.indication(MAC Address, Sequence Number) */
	FUNC3(iapp->hapd, add->mac_addr, HOSTAPD_MODULE_IAPP,
		       HOSTAPD_LEVEL_INFO,
		       "Received IAPP ADD-notify (seq# %d) from %s:%d%s",
		       FUNC2(add->seq_num),
		       FUNC4(from->sin_addr), FUNC5(from->sin_port),
		       sta ? "" : " (STA not found)");

	if (!sta)
		return;

	/* TODO: could use seq_num to try to determine whether last association
	 * to this AP is newer than the one advertised in IAPP-ADD. Although,
	 * this is not really a reliable verification. */

	FUNC3(iapp->hapd, add->mac_addr, HOSTAPD_MODULE_IAPP,
		       HOSTAPD_LEVEL_DEBUG,
		       "Removing STA due to IAPP ADD-notify");
	FUNC1(iapp->hapd, sta, NULL, 0);
}