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
struct hostapd_iface {int dummy; } ;
typedef  enum hostapd_chan_status { ____Placeholder_hostapd_chan_status } hostapd_chan_status ;

/* Variables and functions */
 int HOSTAPD_CHAN_INVALID ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static inline enum hostapd_chan_status FUNC1(struct hostapd_iface *iface)
{
	FUNC0(MSG_ERROR, "ACS was disabled on your build, rebuild hostapd with CONFIG_ACS=y or set channel");
	return HOSTAPD_CHAN_INVALID;
}