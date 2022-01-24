#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ldns_rr ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ ldns_dnssec_name ;

/* Variables and functions */
 scalar_t__ LDNS_STATUS_OK ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

ldns_dnssec_name *
FUNC4(ldns_rr *rr)
{
	ldns_dnssec_name *new_name = FUNC2();

	new_name->name = FUNC3(rr);
	if(FUNC0(new_name, rr) != LDNS_STATUS_OK) {
		FUNC1(new_name);
		return NULL;
	}

	return new_name;
}