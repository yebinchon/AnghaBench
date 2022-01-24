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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC9(struct hs20_osu_client *ctx, const char *pps_fname)
{
	xml_node_t *pps, *node;
	char *fqdn = NULL;

	pps = FUNC4(ctx->xml, pps_fname);
	if (pps == NULL) {
		FUNC5(MSG_INFO, "Could not read or parse '%s'", pps_fname);
		return -1;
	}

	node = FUNC3(ctx->xml, pps, "HomeSP/FQDN");
	if (node)
		fqdn = FUNC7(ctx->xml, node);

	FUNC6(ctx->xml, pps);

	if (fqdn) {
		FILE *f = FUNC1("pps-fqdn", "w");
		if (f) {
			FUNC2(f, "%s", fqdn);
			FUNC0(f);
		}
		FUNC8(ctx->xml, fqdn);
		return 0;
	}

	FUNC8(ctx->xml, fqdn);
	return -1;
}