#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct val_anchors {int /*<<< orphan*/  lock; int /*<<< orphan*/ * tree; TYPE_1__* autr; } ;
struct TYPE_4__ {struct trust_anchor* key; } ;
struct trust_anchor {size_t namelen; struct trust_anchor* autr; int /*<<< orphan*/  lock; struct trust_anchor* name; TYPE_2__ pnode; TYPE_2__ node; int /*<<< orphan*/  dclass; int /*<<< orphan*/  namelabs; } ;
struct autr_point_data {size_t namelen; struct autr_point_data* autr; int /*<<< orphan*/  lock; struct autr_point_data* name; TYPE_2__ pnode; TYPE_2__ node; int /*<<< orphan*/  dclass; int /*<<< orphan*/  namelabs; } ;
struct TYPE_3__ {int /*<<< orphan*/  probe; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct trust_anchor*) ; 
 int /*<<< orphan*/  FUNC2 (struct trust_anchor*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct trust_anchor*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 struct trust_anchor* FUNC8 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct trust_anchor*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static struct trust_anchor*
FUNC11(struct val_anchors* anchors, uint8_t* own, size_t own_len,
	uint16_t dc)
{
	struct trust_anchor* tp = (struct trust_anchor*)FUNC0(1, sizeof(*tp));
	if(!tp) return NULL;
	tp->name = FUNC8(own, own_len);
	if(!tp->name) {
		FUNC2(tp);
		return NULL;
	}
	tp->namelen = own_len;
	tp->namelabs = FUNC1(tp->name);
	tp->node.key = tp;
	tp->dclass = dc;
	tp->autr = (struct autr_point_data*)FUNC0(1, sizeof(*tp->autr));
	if(!tp->autr) {
		FUNC2(tp->name);
		FUNC2(tp);
		return NULL;
	}
	tp->autr->pnode.key = tp;

	FUNC4(&anchors->lock);
	if(!FUNC10(anchors->tree, &tp->node)) {
		FUNC5(&anchors->lock);
		FUNC7("trust anchor presented twice");
		FUNC2(tp->name);
		FUNC2(tp->autr);
		FUNC2(tp);
		return NULL;
	}
	if(!FUNC10(&anchors->autr->probe, &tp->autr->pnode)) {
		(void)FUNC9(anchors->tree, tp);
		FUNC5(&anchors->lock);
		FUNC7("trust anchor in probetree twice");
		FUNC2(tp->name);
		FUNC2(tp->autr);
		FUNC2(tp);
		return NULL;
	}
	FUNC5(&anchors->lock);
	FUNC3(&tp->lock);
	FUNC6(&tp->lock, tp, sizeof(*tp));
	FUNC6(&tp->lock, tp->autr, sizeof(*tp->autr));
	return tp;
}