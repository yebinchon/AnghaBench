#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct TYPE_7__* _rdata_fields; } ;
typedef  TYPE_1__ ldns_rr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 size_t FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,size_t) ; 

void
FUNC5(ldns_rr *rr)
{
	size_t i;
	if (rr) {
		if (FUNC2(rr)) {
			FUNC1(FUNC2(rr));
		}
		for (i = 0; i < FUNC3(rr); i++) {
			FUNC1(FUNC4(rr, i));
		}
		FUNC0(rr->_rdata_fields);
		FUNC0(rr);
	}
}