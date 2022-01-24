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
struct hostapd_iface {int /*<<< orphan*/  wait_channel_update; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct hostapd_iface*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC2(void *eloop_ctx, void *timeout_ctx)
{
	struct hostapd_iface *iface = eloop_ctx;

	if (!iface->wait_channel_update) {
		FUNC1(MSG_INFO, "Channel list update timeout, but interface was not waiting for it");
		return;
	}

	/*
	 * It is possible that the existing channel list is acceptable, so try
	 * to proceed.
	 */
	FUNC1(MSG_DEBUG, "Channel list update timeout - try to continue anyway");
	FUNC0(iface);
}