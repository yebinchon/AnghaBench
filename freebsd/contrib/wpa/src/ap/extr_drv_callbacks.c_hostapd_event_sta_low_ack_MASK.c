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
typedef  int /*<<< orphan*/  u8 ;
struct sta_info {scalar_t__ agreed_to_steer; } ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_2__ {int /*<<< orphan*/  disassoc_low_ack; } ;

/* Variables and functions */
 int /*<<< orphan*/  HOSTAPD_LEVEL_INFO ; 
 int /*<<< orphan*/  HOSTAPD_MODULE_IEEE80211 ; 
 int /*<<< orphan*/  WLAN_REASON_DISASSOC_LOW_ACK ; 
 struct sta_info* FUNC0 (struct hostapd_data*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (struct hostapd_data*,struct sta_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hostapd_data*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hostapd_data*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

void FUNC4(struct hostapd_data *hapd, const u8 *addr)
{
	struct sta_info *sta = FUNC0(hapd, addr);

	if (!sta || !hapd->conf->disassoc_low_ack || sta->agreed_to_steer)
		return;

	FUNC3(hapd, addr, HOSTAPD_MODULE_IEEE80211,
		       HOSTAPD_LEVEL_INFO,
		       "disconnected due to excessive missing ACKs");
	FUNC2(hapd, addr, WLAN_REASON_DISASSOC_LOW_ACK);
	FUNC1(hapd, sta, WLAN_REASON_DISASSOC_LOW_ACK);
}