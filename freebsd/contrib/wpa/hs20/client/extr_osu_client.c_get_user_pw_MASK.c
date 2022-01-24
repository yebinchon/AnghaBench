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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

void FUNC7(struct hs20_osu_client *ctx, xml_node_t *pps,
		 const char *alt_loc, char **user, char **pw)
{
	xml_node_t *node;

	node = FUNC1(ctx->xml, pps,
			      "Credential/UsernamePassword/Username");
	if (node)
		*user = FUNC5(ctx->xml, node);

	node = FUNC1(ctx->xml, pps,
			      "Credential/UsernamePassword/Password");
	if (node)
		*pw = FUNC4(ctx->xml, node, NULL);

	node = FUNC1(ctx->xml, pps, alt_loc);
	if (node) {
		xml_node_t *a;
		a = FUNC2(ctx->xml, node, "Username");
		if (a) {
			FUNC6(ctx->xml, *user);
			*user = FUNC5(ctx->xml, a);
			FUNC3(MSG_INFO, "Use OSU username '%s'", *user);
		}

		a = FUNC2(ctx->xml, node, "Password");
		if (a) {
			FUNC0(*pw);
			*pw = FUNC4(ctx->xml, a, NULL);
			FUNC3(MSG_INFO, "Use OSU password");
		}
	}
}