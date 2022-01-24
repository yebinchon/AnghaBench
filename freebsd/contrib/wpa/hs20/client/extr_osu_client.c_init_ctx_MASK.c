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
struct hs20_osu_client {char* ifname; int /*<<< orphan*/ * http; int /*<<< orphan*/ * xml; int /*<<< orphan*/  devid; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC1 (struct hs20_osu_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct hs20_osu_client*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct hs20_osu_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  osu_cert_cb ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC11 (struct hs20_osu_client*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct hs20_osu_client *ctx)
{
	xml_node_t *devinfo, *devid;

	FUNC5(ctx, 0, sizeof(*ctx));
	ctx->ifname = "wlan0";
	ctx->xml = FUNC11(ctx, NULL);
	if (ctx->xml == NULL)
		return -1;

	devinfo = FUNC4(ctx->xml, "devinfo.xml");
	if (devinfo) {
		devid = FUNC0(ctx->xml, devinfo, "DevId");
		if (devid) {
			char *tmp = FUNC9(ctx->xml, devid);

			if (tmp) {
				ctx->devid = FUNC6(tmp);
				FUNC10(ctx->xml, tmp);
			}
		}
		FUNC8(ctx->xml, devinfo);
	}

	ctx->http = FUNC1(ctx, ctx->xml);
	if (ctx->http == NULL) {
		FUNC7(ctx->xml);
		return -1;
	}
	FUNC2(ctx->http, 2);
	FUNC3(ctx->http, osu_cert_cb, ctx);

	return 0;
}