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
struct auth_zone {int /*<<< orphan*/  data; } ;
struct auth_data {int /*<<< orphan*/  node; } ;
typedef  int /*<<< orphan*/  rbnode_type ;
typedef  int /*<<< orphan*/  hname ;

/* Variables and functions */
 int LDNS_MAX_DOMAINLEN ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_NSEC3 ; 
 int /*<<< orphan*/ * RBTREE_NULL ; 
 int /*<<< orphan*/  FUNC0 (struct auth_data*,int /*<<< orphan*/ ) ; 
 struct auth_data* FUNC1 (struct auth_zone*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct auth_zone*,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *,size_t,int,size_t,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct auth_data*
FUNC5(struct auth_zone* z, uint8_t* nm, size_t nmlen,
	int algo, size_t iter, uint8_t* salt, size_t saltlen)
{
	struct auth_data* node;
	uint8_t hname[LDNS_MAX_DOMAINLEN];
	size_t hlen = sizeof(hname);
	if(!FUNC2(z, hname, &hlen, nm, nmlen, algo, iter,
		salt, saltlen))
		return NULL;
	node = FUNC1(z, hname, hlen);
	if(node)
		return node;
	/* we did not find any, perhaps because the NSEC3 hash is before
	 * the first hash, we have to find the 'last hash' in the zone */
	node = (struct auth_data*)FUNC3(&z->data);
	while(node && (rbnode_type*)node != RBTREE_NULL &&
		!FUNC0(node, LDNS_RR_TYPE_NSEC3)) {
		node = (struct auth_data*)FUNC4(&node->node);
	}
	if((rbnode_type*)node == RBTREE_NULL)
		node = NULL;
	return node;
}