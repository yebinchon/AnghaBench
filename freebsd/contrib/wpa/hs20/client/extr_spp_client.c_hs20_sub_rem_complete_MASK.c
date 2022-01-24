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
struct hs20_osu_client {int /*<<< orphan*/  ifname; scalar_t__ no_reconnect; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct hs20_osu_client*,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(struct hs20_osu_client *ctx,
				  const char *pps_fname)
{
	/*
	 * Update wpa_supplicant credentials and reconnect using updated
	 * information.
	 */
	FUNC2(MSG_INFO, "Updating wpa_supplicant credentials");
	FUNC0(ctx, pps_fname);

	if (ctx->no_reconnect)
		return;

	FUNC2(MSG_INFO, "Requesting reconnection with updated configuration");
	if (FUNC1(ctx->ifname, "INTERWORKING_SELECT auto") < 0)
		FUNC2(MSG_ERROR, "Failed to request wpa_supplicant to reconnect");
}