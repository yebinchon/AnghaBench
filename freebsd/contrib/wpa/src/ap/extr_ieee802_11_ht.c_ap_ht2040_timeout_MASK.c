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
struct hostapd_iface {int /*<<< orphan*/  secondary_ch; TYPE_1__* conf; } ;
struct TYPE_2__ {int /*<<< orphan*/  secondary_channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct hostapd_iface*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

void FUNC2(void *eloop_data, void *user_data)
{
	struct hostapd_iface *iface = eloop_data;

	FUNC1(MSG_INFO, "Switching to 40 MHz operation");

	iface->conf->secondary_channel = iface->secondary_ch;
	FUNC0(iface);
}