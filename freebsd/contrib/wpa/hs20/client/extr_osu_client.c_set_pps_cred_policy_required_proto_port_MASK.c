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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,char*,char*,...) ; 
 int FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC9(struct hs20_osu_client *ctx,
						    int id, xml_node_t *tuple)
{
	xml_node_t *node;
	char *proto, *port;
	char *buf;
	size_t buflen;

	node = FUNC0(ctx->xml, tuple, "IPProtocol");
	if (node == NULL) {
		FUNC6(MSG_INFO, "Ignore RequiredProtoPortTuple without mandatory IPProtocol node");
		return;
	}

	proto = FUNC7(ctx->xml, node);
	if (proto == NULL)
		return;

	FUNC6(MSG_INFO, "- Policy/RequiredProtoPortTuple/<X+>/IPProtocol = %s",
		   proto);

	node = FUNC0(ctx->xml, tuple, "PortNumber");
	port = node ? FUNC7(ctx->xml, node) : NULL;
	if (port) {
		FUNC6(MSG_INFO, "- Policy/RequiredProtoPortTuple/<X+>/PortNumber = %s",
			   port);
		buflen = FUNC4(proto) + FUNC4(port) + 10;
		buf = FUNC2(buflen);
		if (buf)
			FUNC3(buf, buflen, "%s:%s", proto, port);
		FUNC8(ctx->xml, port);
	} else {
		buflen = FUNC4(proto) + 10;
		buf = FUNC2(buflen);
		if (buf)
			FUNC3(buf, buflen, "%s", proto);
	}

	FUNC8(ctx->xml, proto);

	if (buf == NULL)
		return;

	if (FUNC5(ctx->ifname, id, "req_conn_capab", buf) < 0)
		FUNC6(MSG_INFO, "Could not set req_conn_capab");

	FUNC1(buf);
}