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
typedef  scalar_t__ u8 ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_2__ {int /*<<< orphan*/  qos_map_set; scalar_t__ qos_map_set_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  WLAN_EID_QOS_MAP_SET ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ,scalar_t__) ; 

u8 * FUNC1(struct hostapd_data *hapd, u8 *eid)
{
	u8 *pos = eid;
	u8 len = hapd->conf->qos_map_set_len;

	if (!len)
		return eid;

	*pos++ = WLAN_EID_QOS_MAP_SET;
	*pos++ = len;
	FUNC0(pos, hapd->conf->qos_map_set, len);
	pos += len;

	return pos;
}