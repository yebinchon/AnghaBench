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
struct val_anchors {int dummy; } ;
struct trust_anchor {int /*<<< orphan*/  lock; TYPE_1__* autr; } ;
struct autr_ta {struct autr_ta* next; struct autr_ta* rr; } ;
struct TYPE_2__ {struct autr_ta* keys; } ;

/* Variables and functions */
 struct autr_ta* FUNC0 (int /*<<< orphan*/ *,size_t,size_t) ; 
 struct trust_anchor* FUNC1 (struct val_anchors*,int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct autr_ta*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct autr_ta*
FUNC4(struct val_anchors* anchors, uint8_t* rr, size_t rr_len,
        size_t dname_len, struct trust_anchor** tp)
{
	struct autr_ta* ta = FUNC0(rr, rr_len, dname_len);
	if(!ta) 
		return NULL;
	*tp = FUNC1(anchors, rr, rr_len, dname_len);
	if(!*tp) {
		FUNC2(ta->rr);
		FUNC2(ta);
		return NULL;
	}
	/* add ta to tp */
	ta->next = (*tp)->autr->keys;
	(*tp)->autr->keys = ta;
	FUNC3(&(*tp)->lock);
	return ta;
}