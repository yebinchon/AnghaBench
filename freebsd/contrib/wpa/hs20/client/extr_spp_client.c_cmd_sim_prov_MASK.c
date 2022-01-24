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
struct hs20_osu_client {scalar_t__ pps_cred_set; int /*<<< orphan*/  ca_fname; int /*<<< orphan*/  http; int /*<<< orphan*/  ifname; int /*<<< orphan*/  server_url; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  SPP_SUBSCRIPTION_REGISTRATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hs20_osu_client*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

int FUNC6(struct hs20_osu_client *ctx, const char *url)
{
	if (url == NULL) {
		FUNC5(MSG_INFO, "Invalid prov command (missing URL)");
		return -1;
	}

	FUNC5(MSG_INFO, "SIM provisioning requested");

	FUNC0(ctx->server_url);
	ctx->server_url = FUNC1(url);

	FUNC5(MSG_INFO, "Wait for IP address before starting SIM provisioning");

	if (FUNC4(ctx->ifname, 15) < 0) {
		FUNC5(MSG_INFO, "Could not get IP address for WLAN - try connection anyway");
	}

	if (FUNC2(ctx->http, url, ctx->ca_fname, NULL, NULL, NULL,
			     NULL) < 0)
		return -1;
	FUNC3(ctx, SPP_SUBSCRIPTION_REGISTRATION,
			  "Subscription provisioning", NULL, NULL);

	return ctx->pps_cred_set ? 0 : -1;
}