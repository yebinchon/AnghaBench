#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct val_anchors {int /*<<< orphan*/  lock; int /*<<< orphan*/  tree; } ;
struct TYPE_3__ {struct trust_anchor* key; } ;
struct trust_anchor {TYPE_1__ node; int /*<<< orphan*/  lock; scalar_t__ numDNSKEY; scalar_t__ numDS; scalar_t__ autr; scalar_t__ keylist; int /*<<< orphan*/  dclass; int /*<<< orphan*/  namelen; int /*<<< orphan*/  namelabs; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct val_anchors*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct trust_anchor*) ; 

void
FUNC7(struct val_anchors* anchors, uint16_t c,
        uint8_t* nm)
{
	struct trust_anchor key;
	struct trust_anchor* ta;
	key.node.key = &key;
	key.name = nm;
	key.namelabs = FUNC2(nm, &key.namelen);
	key.dclass = c;
	FUNC3(&anchors->lock);
	if(!(ta=(struct trust_anchor*)FUNC6(anchors->tree, &key))) {
		FUNC4(&anchors->lock);
		/* nothing there */
		return;
	}
	/* lock it to drive away other threads that use it */
	FUNC3(&ta->lock);
	/* see if its really an insecure point */
	if(ta->keylist || ta->autr || ta->numDS || ta->numDNSKEY) {
		FUNC4(&anchors->lock);
		FUNC4(&ta->lock);
		/* its not an insecure point, do not remove it */
		return;
	}

	/* remove from tree */
	(void)FUNC5(anchors->tree, &ta->node);
	FUNC1(anchors);
	FUNC4(&anchors->lock);

	/* actual free of data */
	FUNC4(&ta->lock);
	FUNC0(&ta->node, NULL);
}