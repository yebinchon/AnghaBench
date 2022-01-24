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
struct hs20_osu_client {int /*<<< orphan*/  xml; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int FUNC0 (struct hs20_osu_client*,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct hs20_osu_client *ctx, const char *pps_fname,
			 const char *ca_fname)
{
	xml_node_t *pps, *node, *aaa;
	int ret;

	pps = FUNC2(ctx->xml, pps_fname);
	if (pps == NULL) {
		FUNC3(MSG_INFO, "Could not read or parse '%s'", pps_fname);
		return -1;
	}

	node = FUNC1(ctx->xml, pps,
			      "AAAServerTrustRoot");
	if (node == NULL) {
		FUNC3(MSG_INFO, "No AAAServerTrustRoot/CertURL found from PPS");
		FUNC5(ctx->xml, pps);
		return -2;
	}

	aaa = FUNC4(ctx->xml, node);
	if (aaa == NULL) {
		FUNC3(MSG_INFO, "No AAAServerTrustRoot/CertURL found from PPS");
		FUNC5(ctx->xml, pps);
		return -1;
	}

	ret = FUNC0(ctx, aaa, ca_fname);
	FUNC5(ctx->xml, pps);

	return ret;
}