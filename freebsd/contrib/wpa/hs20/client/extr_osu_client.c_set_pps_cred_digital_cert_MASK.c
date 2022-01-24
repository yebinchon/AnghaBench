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
struct hs20_osu_client {int /*<<< orphan*/  ifname; } ;
typedef  int /*<<< orphan*/  dir ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/ * FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (char*) ; 
 int FUNC2 (char*,int,char*,char*,char const*) ; 
 scalar_t__ FUNC3 (int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC6(struct hs20_osu_client *ctx, int id,
				      xml_node_t *node, const char *fqdn)
{
	char buf[200], dir[200];
	int res;

	FUNC5(MSG_INFO, "- Credential/DigitalCertificate");

	if (FUNC0(dir, sizeof(dir)) == NULL)
		return;

	/* TODO: could build username from Subject of Subject AltName */
	if (FUNC4(ctx->ifname, id, "username", "cert") < 0) {
		FUNC5(MSG_INFO, "Failed to set username");
	}

	res = FUNC2(buf, sizeof(buf), "%s/SP/%s/client-cert.pem", dir,
			  fqdn);
	if (FUNC3(sizeof(buf), res))
		return;
	if (FUNC1(buf)) {
		if (FUNC4(ctx->ifname, id, "client_cert", buf) < 0) {
			FUNC5(MSG_INFO, "Failed to set client_cert");
		}
	}

	res = FUNC2(buf, sizeof(buf), "%s/SP/%s/client-key.pem", dir,
			  fqdn);
	if (FUNC3(sizeof(buf), res))
		return;
	if (FUNC1(buf)) {
		if (FUNC4(ctx->ifname, id, "private_key", buf) < 0) {
			FUNC5(MSG_INFO, "Failed to set private_key");
		}
	}
}