#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct name_tree_node* key; } ;
struct name_tree_node {size_t len; struct name_tree_node* name; int /*<<< orphan*/  dclass; int /*<<< orphan*/  labs; TYPE_1__ node; } ;
typedef  struct name_tree_node uint8_t ;
struct config_strlist {int /*<<< orphan*/  str; struct config_strlist* next; } ;
struct config_file {struct config_strlist* caps_whitelist; } ;
typedef  int /*<<< orphan*/  rbtree_type ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_CLASS_IN ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct name_tree_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct name_tree_node*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct name_tree_node*,struct name_tree_node*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct name_tree_node* FUNC6 (int /*<<< orphan*/ ,size_t*) ; 

__attribute__((used)) static int
FUNC7(rbtree_type* ntree, struct config_file* cfg)
{
	struct config_strlist* p;
	for(p=cfg->caps_whitelist; p; p=p->next) {
		struct name_tree_node* n;
		size_t len;
		uint8_t* nm = FUNC6(p->str, &len);
		if(!nm) {
			FUNC3("could not parse %s", p->str);
			return 0;
		}
		n = (struct name_tree_node*)FUNC0(1, sizeof(*n));
		if(!n) {
			FUNC3("out of memory");
			FUNC2(nm);
			return 0;
		}
		n->node.key = n;
		n->name = nm;
		n->len = len;
		n->labs = FUNC1(nm);
		n->dclass = LDNS_RR_CLASS_IN;
		if(!FUNC5(ntree, n, nm, len, n->labs, n->dclass)) {
			/* duplicate element ignored, idempotent */
			FUNC2(n->name);
			FUNC2(n);
		}
	}
	FUNC4(ntree);
	return 1;
}