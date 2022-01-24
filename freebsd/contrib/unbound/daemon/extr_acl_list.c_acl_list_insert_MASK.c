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
struct acl_list {int /*<<< orphan*/  tree; int /*<<< orphan*/  region; } ;
struct acl_addr {int control; int /*<<< orphan*/  node; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  enum acl_access { ____Placeholder_acl_access } acl_access ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_QUERY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 
 struct acl_addr* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static struct acl_addr*
FUNC3(struct acl_list* acl, struct sockaddr_storage* addr, 
	socklen_t addrlen, int net, enum acl_access control, 
	int complain_duplicates)
{
	struct acl_addr* node = FUNC1(acl->region,
		sizeof(struct acl_addr));
	if(!node)
		return NULL;
	node->control = control;
	if(!FUNC0(&acl->tree, &node->node, addr, addrlen, net)) {
		if(complain_duplicates)
			FUNC2(VERB_QUERY, "duplicate acl address ignored.");
	}
	return node;
}