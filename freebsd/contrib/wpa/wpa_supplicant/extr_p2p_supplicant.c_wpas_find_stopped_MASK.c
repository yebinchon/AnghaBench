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
struct wpa_supplicant {scalar_t__ p2p_scan_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  P2P_EVENT_FIND_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*) ; 

__attribute__((used)) static void FUNC4(void *ctx)
{
	struct wpa_supplicant *wpa_s = ctx;

	if (wpa_s->p2p_scan_work && FUNC2(wpa_s) < 0)
		FUNC1(MSG_DEBUG, "P2P: Abort ongoing scan failed");

	FUNC0(wpa_s, MSG_INFO, P2P_EVENT_FIND_STOPPED);
	FUNC3(wpa_s);
}