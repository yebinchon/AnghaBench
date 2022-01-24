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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct hs20_osu_client *ctx, const char *in_fname,
			  const char *out_fname)
{
	xml_node_t *tnds, *mo;

	tnds = FUNC0(ctx->xml, in_fname);
	if (tnds == NULL) {
		FUNC3(MSG_INFO, "Could not read or parse '%s'", in_fname);
		return;
	}

	mo = FUNC2(ctx->xml, tnds);
	if (mo) {
		FUNC1(ctx->xml, out_fname, mo);
		FUNC4(ctx->xml, mo);
	}

	FUNC4(ctx->xml, tnds);
}