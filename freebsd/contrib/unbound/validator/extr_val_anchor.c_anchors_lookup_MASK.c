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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint16_t ;
struct val_anchors {int /*<<< orphan*/  lock; int /*<<< orphan*/  tree; } ;
struct TYPE_2__ {struct trust_anchor* key; } ;
struct trust_anchor {int namelabs; size_t namelen; scalar_t__ dclass; int /*<<< orphan*/  lock; struct trust_anchor* parent; int /*<<< orphan*/ * name; TYPE_1__ node; } ;
typedef  int /*<<< orphan*/  rbnode_type ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct trust_anchor*,int /*<<< orphan*/ **) ; 

struct trust_anchor* 
FUNC5(struct val_anchors* anchors,
        uint8_t* qname, size_t qname_len, uint16_t qclass)
{
	struct trust_anchor key;
	struct trust_anchor* result;
	rbnode_type* res = NULL;
	key.node.key = &key;
	key.name = qname;
	key.namelabs = FUNC0(qname);
	key.namelen = qname_len;
	key.dclass = qclass;
	FUNC2(&anchors->lock);
	if(FUNC4(anchors->tree, &key, &res)) {
		/* exact */
		result = (struct trust_anchor*)res;
	} else {
		/* smaller element (or no element) */
		int m;
		result = (struct trust_anchor*)res;
		if(!result || result->dclass != qclass) {
			FUNC3(&anchors->lock);
			return NULL;
		}
		/* count number of labels matched */
		(void)FUNC1(result->name, result->namelabs, key.name,
			key.namelabs, &m);
		while(result) { /* go up until qname is subdomain of stub */
			if(result->namelabs <= m)
				break;
			result = result->parent;
		}
	}
	if(result) {
		FUNC2(&result->lock);
	}
	FUNC3(&anchors->lock);
	return result;
}