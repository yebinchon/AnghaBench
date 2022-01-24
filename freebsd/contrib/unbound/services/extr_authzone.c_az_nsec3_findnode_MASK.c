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
typedef  int /*<<< orphan*/  uint8_t ;
struct query_info {size_t qname_len; int /*<<< orphan*/ * qname; scalar_t__ qtype; scalar_t__ qclass; } ;
struct auth_zone {int dummy; } ;
struct auth_data {int /*<<< orphan*/  node; } ;
typedef  int /*<<< orphan*/  rbnode_type ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_TYPE_NSEC3 ; 
 int /*<<< orphan*/ * RBTREE_NULL ; 
 int /*<<< orphan*/  FUNC0 (struct auth_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct auth_zone*,struct query_info*,int*,struct auth_data**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct auth_data*
FUNC3(struct auth_zone* z, uint8_t* hashnm, size_t hashnmlen)
{
	struct query_info qinfo;
	struct auth_data* node;
	int node_exact;
	qinfo.qclass = 0;
	qinfo.qtype = 0;
	qinfo.qname = hashnm;
	qinfo.qname_len = hashnmlen;
	/* because canonical ordering and b32 nsec3 ordering are the same.
	 * this is a good lookup to find the nsec3 name. */
	FUNC1(z, &qinfo, &node_exact, &node);
	/* but we may have to skip non-nsec3 nodes */
	/* this may be a lot, the way to speed that up is to have a
	 * separate nsec3 tree with nsec3 nodes */
	while(node && (rbnode_type*)node != RBTREE_NULL &&
		!FUNC0(node, LDNS_RR_TYPE_NSEC3)) {
		node = (struct auth_data*)FUNC2(&node->node);
	}
	if((rbnode_type*)node == RBTREE_NULL)
		node = NULL;
	return node;
}