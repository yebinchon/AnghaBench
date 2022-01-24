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
struct autr_ta {size_t rr_len; size_t dname_len; int /*<<< orphan*/ * rr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct autr_ta*
FUNC2(uint8_t* rr, size_t rr_len, size_t dname_len)
{
	struct autr_ta* ta = (struct autr_ta*)FUNC0(1, sizeof(*ta));
	if(!ta) {
		FUNC1(rr);
		return NULL;
	}
	ta->rr = rr;
	ta->rr_len = rr_len;
	ta->dname_len = dname_len;
	return ta;
}