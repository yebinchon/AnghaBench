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
struct val_anchors {int /*<<< orphan*/  lock; struct trust_anchor* dlv_anchor; int /*<<< orphan*/  tree; } ;
struct trust_anchor {size_t numDS; size_t numDNSKEY; int /*<<< orphan*/  lock; int /*<<< orphan*/  node; int /*<<< orphan*/  name; int /*<<< orphan*/  dclass; scalar_t__ autr; } ;
typedef  int /*<<< orphan*/  rbnode_type ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_TYPE_DNSKEY ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_DS ; 
 int /*<<< orphan*/ * RBTREE_NULL ; 
 int /*<<< orphan*/  FUNC0 (struct trust_anchor*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC2 (struct trust_anchor*) ; 
 size_t FUNC3 (struct trust_anchor*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(struct val_anchors* anchors)
{
	struct trust_anchor* ta;
	struct trust_anchor* next;
	size_t nods, nokey;
	FUNC5(&anchors->lock);
	ta=(struct trust_anchor*)FUNC11(anchors->tree);
	while((rbnode_type*)ta != RBTREE_NULL) {
		next = (struct trust_anchor*)FUNC12(&ta->node);
		FUNC5(&ta->lock);
		if(ta->autr || (ta->numDS == 0 && ta->numDNSKEY == 0)) {
			FUNC6(&ta->lock);
			ta = next; /* skip */
			continue;
		}
		if(!FUNC0(ta)) {
			FUNC7("out of memory");
			FUNC6(&ta->lock);
			FUNC6(&anchors->lock);
			return 0;
		}
		nods = FUNC3(ta);
		nokey = FUNC2(ta);
		if(nods) {
			FUNC8(0, "warning: unsupported "
				"algorithm for trust anchor", 
				ta->name, LDNS_RR_TYPE_DS, ta->dclass);
		}
		if(nokey) {
			FUNC8(0, "warning: unsupported "
				"algorithm for trust anchor", 
				ta->name, LDNS_RR_TYPE_DNSKEY, ta->dclass);
		}
		if(nods == ta->numDS && nokey == ta->numDNSKEY) {
			char b[257];
			FUNC4(ta->name, b);
			FUNC9("trust anchor %s has no supported algorithms,"
				" the anchor is ignored (check if you need to"
				" upgrade unbound and "
#ifdef HAVE_LIBRESSL
				"libressl"
#else
				"openssl"
#endif
				")", b);
			(void)FUNC10(anchors->tree, &ta->node);
			FUNC6(&ta->lock);
			if(anchors->dlv_anchor == ta)
				anchors->dlv_anchor = NULL;
			FUNC1(&ta->node, NULL);
			ta = next;
			continue;
		}
		FUNC6(&ta->lock);
		ta = next;
	}
	FUNC6(&anchors->lock);
	return 1;
}