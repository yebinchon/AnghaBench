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
typedef  int /*<<< orphan*/  val ;
struct hs20_osu_client {int /*<<< orphan*/  xml; int /*<<< orphan*/  ifname; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,int,int,char const*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 char* FUNC5 (char*,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC9(struct hs20_osu_client *ctx, int id,
				    xml_node_t *prp)
{
	xml_node_t *node;
	char *txt = NULL, *pos;
	char *prio, *country_buf = NULL;
	const char *country;
	char val[200];
	int priority;

	node = FUNC1(ctx->xml, prp, "Priority");
	if (node == NULL)
		return;
	prio = FUNC7(ctx->xml, node);
	if (prio == NULL)
		return;
	FUNC6(MSG_INFO, "- Policy/PreferredRoamingPartnerList/<X+>/Priority = %s",
		   prio);
	priority = FUNC0(prio);
	FUNC8(ctx->xml, prio);

	node = FUNC1(ctx->xml, prp, "Country");
	if (node) {
		country_buf = FUNC7(ctx->xml, node);
		if (country_buf == NULL)
			return;
		country = country_buf;
		FUNC6(MSG_INFO, "- Policy/PreferredRoamingPartnerList/<X+>/Country = %s",
			   country);
	} else {
		country = "*";
	}

	node = FUNC1(ctx->xml, prp, "FQDN_Match");
	if (node == NULL)
		goto out;
	txt = FUNC7(ctx->xml, node);
	if (txt == NULL)
		goto out;
	FUNC6(MSG_INFO, "- Policy/PreferredRoamingPartnerList/<X+>/FQDN_Match = %s",
		   txt);
	pos = FUNC5(txt, ',');
	if (pos == NULL)
		goto out;
	*pos++ = '\0';

	FUNC3(val, sizeof(val), "%s,%d,%d,%s", txt,
		 FUNC4(pos, "includeSubdomains") != 0, priority, country);
	if (FUNC2(ctx->ifname, id, "roaming_partner", val) < 0)
		FUNC6(MSG_INFO, "Failed to set cred roaming_partner");
out:
	FUNC8(ctx->xml, country_buf);
	FUNC8(ctx->xml, txt);
}