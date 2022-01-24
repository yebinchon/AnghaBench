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
struct hs20_osu_client {int /*<<< orphan*/  xml; int /*<<< orphan*/  fqdn; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC1 (struct hs20_osu_client*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct hs20_osu_client *ctx, const char *pps_fname,
			const char *replace_fname)
{
	xml_node_t *pps, *replace;
	int res;

	ctx->fqdn = FUNC2("wi-fi.org");

	pps = FUNC0(ctx->xml, pps_fname);
	if (pps == NULL) {
		FUNC3(MSG_INFO, "PPS file %s could not be parsed",
			   pps_fname);
		return;
	}

	replace = FUNC0(ctx->xml, replace_fname);
	if (replace == NULL) {
		FUNC3(MSG_INFO, "Replace file %s could not be parsed",
			   replace_fname);
		FUNC4(ctx->xml, pps);
		return;
	}

	res = FUNC1(ctx, replace, pps, pps_fname);
	FUNC3(MSG_INFO, "oma_dm_replace --> %d", res);

	FUNC4(ctx->xml, pps);
	FUNC4(ctx->xml, replace);
}