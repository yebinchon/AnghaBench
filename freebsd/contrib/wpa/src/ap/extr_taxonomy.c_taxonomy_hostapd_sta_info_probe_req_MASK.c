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
struct hostapd_sta_info {int /*<<< orphan*/  probe_ie_taxonomy; } ;
struct hostapd_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(const struct hostapd_data *hapd,
					 struct hostapd_sta_info *info,
					 const u8 *ie, size_t ie_len)
{
	FUNC1(info->probe_ie_taxonomy);
	info->probe_ie_taxonomy = FUNC0(ie, ie_len);
}