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
struct ipfw_flow_id {int proto; int src_ip; int src_port; int dst_ip; int dst_port; int flow_id6; int /*<<< orphan*/  dst_ip6; int /*<<< orphan*/  src_ip6; scalar_t__ extra; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (struct ipfw_flow_id*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,...) ; 

__attribute__((used)) static void
FUNC3(struct ipfw_flow_id *id)
{
	if (!FUNC0(id)) {
		FUNC2("    "
		    "mask: %s 0x%02x 0x%08x/0x%04x -> 0x%08x/0x%04x\n",
		    id->extra ? "queue," : "",
		    id->proto,
		    id->src_ip, id->src_port,
		    id->dst_ip, id->dst_port);
	} else {
		char buf[255];
		FUNC2("\n        mask: %sproto: 0x%02x, flow_id: 0x%08x,  ",
		    id->extra ? "queue," : "",
		    id->proto, id->flow_id6);
		FUNC1(AF_INET6, &(id->src_ip6), buf, sizeof(buf));
		FUNC2("%s/0x%04x -> ", buf, id->src_port);
		FUNC1(AF_INET6, &(id->dst_ip6), buf, sizeof(buf));
		FUNC2("%s/0x%04x\n", buf, id->dst_port);
	}
}