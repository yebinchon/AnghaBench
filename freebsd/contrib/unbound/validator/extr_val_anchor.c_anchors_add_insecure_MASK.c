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
typedef  int /*<<< orphan*/  uint16_t ;
struct val_anchors {int /*<<< orphan*/  lock; int /*<<< orphan*/  tree; } ;
struct TYPE_2__ {struct trust_anchor* key; } ;
struct trust_anchor {int /*<<< orphan*/  namelen; int /*<<< orphan*/  namelabs; int /*<<< orphan*/  dclass; int /*<<< orphan*/ * name; TYPE_1__ node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct val_anchors*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct val_anchors*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct trust_anchor*) ; 

int
FUNC7(struct val_anchors* anchors, uint16_t c, uint8_t* nm)
{
	struct trust_anchor key;
	key.node.key = &key;
	key.name = nm;
	key.namelabs = FUNC2(nm, &key.namelen);
	key.dclass = c;
	FUNC3(&anchors->lock);
	if(FUNC6(anchors->tree, &key)) {
		FUNC4(&anchors->lock);
		/* nothing to do, already an anchor or insecure point */
		return 1;
	}
	if(!FUNC0(anchors, nm, key.namelabs, key.namelen, c, 0)) {
		FUNC5("out of memory");
		FUNC4(&anchors->lock);
		return 0;
	}
	/* no other contents in new ta, because it is insecure point */
	FUNC1(anchors);
	FUNC4(&anchors->lock);
	return 1;
}