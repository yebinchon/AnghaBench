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
struct autr_ta {int dummy; } ;
struct TYPE_2__ {scalar_t__ file; } ;

/* Variables and functions */
 struct autr_ta* FUNC0 (struct val_anchors*,char*,struct trust_anchor**,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ **,size_t*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct autr_ta*) ; 
 scalar_t__ FUNC5 (char const*) ; 

__attribute__((used)) static struct trust_anchor*
FUNC6(struct val_anchors* anchors, char* str, const char* fname,
	uint8_t* origin, size_t origin_len, uint8_t** prev, size_t* prev_len,
	int* skip)
{
	struct autr_ta* ta = NULL;
	struct trust_anchor* tp = NULL;

	ta = FUNC0(anchors, str, &tp, origin, origin_len,
		prev, prev_len, skip);
	if(!ta)
		return NULL;
	FUNC1(&tp->lock);
	if(!FUNC4(str, ta)) {
		FUNC2(&tp->lock);
		return NULL;
	}
	if(!tp->autr->file) {
		tp->autr->file = FUNC5(fname);
		if(!tp->autr->file) {
			FUNC2(&tp->lock);
			FUNC3("malloc failure");
			return NULL;
		}
	}
	FUNC2(&tp->lock);
        return tp;
}