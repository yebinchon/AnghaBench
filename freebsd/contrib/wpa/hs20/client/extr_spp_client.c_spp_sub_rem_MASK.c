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
typedef  int /*<<< orphan*/  xml_node_t ;
struct hs20_osu_client {int /*<<< orphan*/  ca_fname; int /*<<< orphan*/  http; int /*<<< orphan*/  server_url; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  SPP_SUBSCRIPTION_REMEDIATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,char const*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct hs20_osu_client*,int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct hs20_osu_client*,char*) ; 

void FUNC6(struct hs20_osu_client *ctx, const char *address,
		 const char *pps_fname,
		 const char *client_cert, const char *client_key,
		 const char *cred_username, const char *cred_password,
		 xml_node_t *pps)
{
	FUNC4(MSG_INFO, "SPP subscription remediation");
	FUNC5(ctx, "SPP subscription remediation");

	FUNC0(ctx->server_url);
	ctx->server_url = FUNC1(address);

	if (FUNC2(ctx->http, address, ctx->ca_fname,
			     cred_username, cred_password, client_cert,
			     client_key) == 0) {
		FUNC3(ctx, SPP_SUBSCRIPTION_REMEDIATION,
				  "Subscription remediation", pps_fname, pps);
	}
}