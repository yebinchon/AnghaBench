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
struct iter_priv {int /*<<< orphan*/  a; int /*<<< orphan*/  region; } ;
struct config_strlist {int /*<<< orphan*/  str; struct config_strlist* next; } ;
struct config_file {struct config_strlist* private_address; } ;
struct addr_tree_node {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  UNBOUND_DNS_PORT ; 
 int /*<<< orphan*/  VERB_QUERY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct addr_tree_node*,struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockaddr_storage*,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct iter_priv* priv, struct config_file* cfg)
{
	/* parse addresses, report errors, insert into tree */
	struct config_strlist* p;
	struct addr_tree_node* n;
	struct sockaddr_storage addr;
	int net;
	socklen_t addrlen;

	for(p = cfg->private_address; p; p = p->next) {
		FUNC1(p->str);
		if(!FUNC3(p->str, UNBOUND_DNS_PORT, &addr, 
			&addrlen, &net)) {
			FUNC2("cannot parse private-address: %s", p->str);
			return 0;
		}
		n = (struct addr_tree_node*)FUNC4(priv->region,
			sizeof(*n));
		if(!n) {
			FUNC2("out of memory");
			return 0;
		}
		if(!FUNC0(&priv->a, n, &addr, addrlen, net)) {
			FUNC5(VERB_QUERY, "ignoring duplicate "
				"private-address: %s", p->str);
		}
	}
	return 1;
}