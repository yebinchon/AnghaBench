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
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct hs20_osu_client *ctx, const char *pps_fname,
			    const char *ca_fname)
{
	xml_node_t *pps, *node;
	int ret;

	pps = FUNC2(ctx->xml, pps_fname);
	if (pps == NULL) {
		FUNC3(MSG_INFO, "Could not read or parse '%s'", pps_fname);
		return -1;
	}

	node = FUNC1(ctx->xml, pps,
			      "Policy/PolicyUpdate/TrustRoot");
	if (node == NULL) {
		FUNC3(MSG_INFO, "No Policy/PolicyUpdate/TrustRoot/CertURL found from PPS");
		FUNC4(ctx->xml, pps);
		return -2;
	}

	ret = FUNC0(ctx, node, ca_fname);
	FUNC4(ctx->xml, pps);

	return ret;
}