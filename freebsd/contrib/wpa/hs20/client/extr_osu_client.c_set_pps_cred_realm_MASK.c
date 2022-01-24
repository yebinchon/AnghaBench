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
struct hs20_osu_client {int /*<<< orphan*/  ifname; int /*<<< orphan*/  xml; } ;
typedef  int /*<<< orphan*/  dir ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/ * FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (char*) ; 
 int FUNC2 (char*,int,char*,char*,char const*) ; 
 scalar_t__ FUNC3 (int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC8(struct hs20_osu_client *ctx, int id,
			       xml_node_t *node, const char *fqdn, int sim)
{
	char *str = FUNC6(ctx->xml, node);
	char buf[200], dir[200];
	int res;

	if (str == NULL)
		return;

	FUNC5(MSG_INFO, "- Credential/Realm = %s", str);
	if (FUNC4(ctx->ifname, id, "realm", str) < 0)
		FUNC5(MSG_INFO, "Failed to set cred realm");
	FUNC7(ctx->xml, str);

	if (sim)
		return;

	if (FUNC0(dir, sizeof(dir)) == NULL)
		return;
	res = FUNC2(buf, sizeof(buf), "%s/SP/%s/aaa-ca.pem", dir, fqdn);
	if (FUNC3(sizeof(buf), res))
		return;
	if (FUNC1(buf)) {
		if (FUNC4(ctx->ifname, id, "ca_cert", buf) < 0) {
			FUNC5(MSG_INFO, "Failed to set CA cert");
		}
	}
}