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
struct wpa_driver_nl80211_data {int /*<<< orphan*/  first_bss; } ;
struct nl_msg {int dummy; } ;
struct nl80211_dump_scan_ctx {scalar_t__ idx; struct wpa_driver_nl80211_data* drv; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  NL80211_CMD_GET_SCAN ; 
 int /*<<< orphan*/  NLM_F_DUMP ; 
 struct nl_msg* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nl80211_dump_scan_handler ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_driver_nl80211_data*,struct nl_msg*,int /*<<< orphan*/ ,struct nl80211_dump_scan_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

void FUNC3(struct wpa_driver_nl80211_data *drv)
{
	struct nl_msg *msg;
	struct nl80211_dump_scan_ctx ctx;

	FUNC2(MSG_DEBUG, "nl80211: Scan result dump");
	ctx.drv = drv;
	ctx.idx = 0;
	msg = FUNC0(drv->first_bss, NLM_F_DUMP, NL80211_CMD_GET_SCAN);
	if (msg)
		FUNC1(drv, msg, nl80211_dump_scan_handler, &ctx);
}