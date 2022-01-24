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

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static void FUNC6(struct hs20_osu_client *ctx, int id,
				  xml_node_t *node)
{
	int len, i;
	char *pw, *hex, *pos, *end;

	pw = FUNC5(ctx->xml, node, &len);
	if (pw == NULL)
		return;

	FUNC4(MSG_INFO, "- Credential/UsernamePassword/Password = %s", pw);

	hex = FUNC1(len * 2 + 1);
	if (hex == NULL) {
		FUNC0(pw);
		return;
	}
	end = hex + len * 2 + 1;
	pos = hex;
	for (i = 0; i < len; i++) {
		FUNC3(pos, end - pos, "%02x", pw[i]);
		pos += 2;
	}
	FUNC0(pw);

	if (FUNC2(ctx->ifname, id, "password", hex) < 0)
		FUNC4(MSG_INFO, "Failed to set cred password");
	FUNC0(hex);
}