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
typedef  int /*<<< orphan*/  uint16_t ;
struct sockaddr_storage {int dummy; } ;
struct rbtree_type {int dummy; } ;
struct local_zones {int /*<<< orphan*/  lock; } ;
struct local_zone_override {int type; } ;
struct local_zone {int /*<<< orphan*/  lock; struct rbtree_type* override_tree; int /*<<< orphan*/  region; } ;
struct addr_tree_node {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  enum localzone_type { ____Placeholder_localzone_type } localzone_type ;
typedef  int /*<<< orphan*/  dname ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_MAX_DOMAINLEN ; 
 int /*<<< orphan*/  UNBOUND_DNS_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct rbtree_type*) ; 
 int /*<<< orphan*/  FUNC1 (struct rbtree_type*,struct addr_tree_node*,struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int*) ; 
 struct local_zone* FUNC4 (struct local_zones*,int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,struct sockaddr_storage*,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (char*,int /*<<< orphan*/ *,size_t*) ; 

__attribute__((used)) static int
FUNC12(struct local_zones* zones, char* zname, char* netblock,
	char* type, uint16_t rr_class)
{
	uint8_t dname[LDNS_MAX_DOMAINLEN+1];
	size_t dname_len = sizeof(dname);
	int dname_labs;
	struct sockaddr_storage addr;
	int net;
	socklen_t addrlen;
	struct local_zone* z;
	enum localzone_type t;

	/* parse zone name */
	if(FUNC11(zname, dname, &dname_len) != 0) {
		FUNC8("cannot parse zone name in local-zone-override: %s %s",
			zname, netblock);
		return 0;
	}
	dname_labs = FUNC2(dname);

	/* parse netblock */
	if(!FUNC9(netblock, UNBOUND_DNS_PORT, &addr, &addrlen,
		&net)) {
		FUNC8("cannot parse netblock in local-zone-override: %s %s",
			zname, netblock);
		return 0;
	}

	/* parse zone type */
	if(!FUNC3(type, &t)) {
		FUNC8("cannot parse type in local-zone-override: %s %s %s",
			zname, netblock, type);
		return 0;
	}

	/* find localzone entry */
	FUNC5(&zones->lock);
	z = FUNC4(zones, dname, dname_len, dname_labs, rr_class);
	if(!z) {
		FUNC6(&zones->lock);
		FUNC8("no local-zone for local-zone-override %s", zname);
		return 0;
	}
	FUNC7(&z->lock);
	FUNC6(&zones->lock);

	/* create netblock addr_tree if not present yet */
	if(!z->override_tree) {
		z->override_tree = (struct rbtree_type*)FUNC10(
			z->region, sizeof(*z->override_tree));
		if(!z->override_tree) {
			FUNC6(&z->lock);
			FUNC8("out of memory");
			return 0;
		}
		FUNC0(z->override_tree);
	}
	/* add new elem to tree */
	if(z->override_tree) {
		struct local_zone_override* n;
		n = (struct local_zone_override*)FUNC10(
			z->region, sizeof(*n));
		if(!n) {
			FUNC6(&z->lock);
			FUNC8("out of memory");
			return 0;
		}
		n->type = t;
		if(!FUNC1(z->override_tree,
			(struct addr_tree_node*)n, &addr, addrlen, net)) {
			FUNC6(&z->lock);
			FUNC8("duplicate local-zone-override %s %s",
				zname, netblock);
			return 1;
		}
	}

	FUNC6(&z->lock);
	return 1;
}