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
struct trust_anchor {TYPE_1__* autr; } ;
struct autr_ta {struct autr_ta* next; } ;
struct TYPE_2__ {struct autr_ta* keys; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct autr_ta*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int
FUNC1(struct trust_anchor* tp, uint16_t t, uint8_t* rdata, size_t rdata_len,
	struct autr_ta** result)
{
	struct autr_ta* ta;
	if(!tp || !rdata) {
		*result = NULL;
		return 0;
	}
	for(ta=tp->autr->keys; ta; ta=ta->next) {
		if(FUNC0(ta, t, rdata, rdata_len) == 0) {
			*result = ta;
			return 1;
		}
	}
	*result = NULL;
	return 1;
}