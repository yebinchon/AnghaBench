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
struct iter_donotq {int /*<<< orphan*/  tree; int /*<<< orphan*/  region; } ;
struct addr_tree_node {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_QUERY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct addr_tree_node*,struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC3(struct iter_donotq* dq, struct sockaddr_storage* addr, 
	socklen_t addrlen, int net)
{
	struct addr_tree_node* node = (struct addr_tree_node*)FUNC1(
		dq->region, sizeof(*node));
	if(!node)
		return 0;
	if(!FUNC0(&dq->tree, node, addr, addrlen, net)) {
		FUNC2(VERB_QUERY, "duplicate donotquery address ignored.");
	}
	return 1;
}