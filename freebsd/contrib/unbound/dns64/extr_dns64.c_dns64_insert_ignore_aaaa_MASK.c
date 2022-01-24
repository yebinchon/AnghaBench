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
struct name_tree_node {struct name_tree_node* name; int /*<<< orphan*/  dclass; int /*<<< orphan*/  labs; int /*<<< orphan*/  len; } ;
struct dns64_env {int /*<<< orphan*/  ignore_aaaa; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_CLASS_IN ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct name_tree_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct name_tree_node*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct name_tree_node*,struct name_tree_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct name_tree_node* FUNC5 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct dns64_env* dns64_env, char* str)
{
	/* parse and insert element */
	struct name_tree_node* node;
	node = (struct name_tree_node*)FUNC0(1, sizeof(*node));
	if(!node) {
		FUNC3("out of memory");
		return 0;
	}
	node->name = FUNC5(str, &node->len);
	if(!node->name) {
		FUNC2(node);
		FUNC3("cannot parse dns64-ignore-aaaa: %s", str);
		return 0;
	}
	node->labs = FUNC1(node->name);
	node->dclass = LDNS_RR_CLASS_IN;
	if(!FUNC4(&dns64_env->ignore_aaaa, node,
		node->name, node->len, node->labs, node->dclass)) {
		/* ignore duplicate element */
		FUNC2(node->name);
		FUNC2(node);
		return 1;
	}
	return 1;
}