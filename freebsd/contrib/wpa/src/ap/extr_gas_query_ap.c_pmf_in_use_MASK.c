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
struct sta_info {int flags; } ;
struct hostapd_data {int dummy; } ;

/* Variables and functions */
 int WLAN_STA_MFP ; 
 struct sta_info* FUNC0 (struct hostapd_data*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC1(struct hostapd_data *hapd, const u8 *addr)
{
	struct sta_info *sta;

	sta = FUNC0(hapd, addr);
	return sta && (sta->flags & WLAN_STA_MFP);
}