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
struct sockaddr_storage {int dummy; } ;
struct respip_set {int /*<<< orphan*/  ip_tree; int /*<<< orphan*/  region; } ;
struct resp_addr {int /*<<< orphan*/  node; int /*<<< orphan*/  action; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ,struct sockaddr_storage*,int /*<<< orphan*/ *,int*) ; 
 struct resp_addr* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  respip_none ; 

__attribute__((used)) static struct resp_addr*
FUNC6(struct respip_set* set, const char* ipstr, int create)
{
	struct resp_addr* node;
	struct sockaddr_storage addr;
	int net;
	socklen_t addrlen;

	if(!FUNC4(ipstr, 0, &addr, &addrlen, &net)) {
		FUNC2("cannot parse netblock: '%s'", ipstr);
		return NULL;
	}
	node = (struct resp_addr*)FUNC0(&set->ip_tree, &addr, addrlen, net);
	if(!node && create) {
		node = FUNC5(set->region, sizeof(*node));
		if(!node) {
			FUNC2("out of memory");
			return NULL;
		}
		node->action = respip_none;
		if(!FUNC1(&set->ip_tree, &node->node, &addr,
			addrlen, net)) {
			/* We know we didn't find it, so this should be
			 * impossible. */
			FUNC3("unexpected: duplicate address: %s", ipstr);
		}
	}
	return node;
}