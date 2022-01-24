#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* parent; int /*<<< orphan*/  signatures; int /*<<< orphan*/  rrset; } ;
typedef  TYPE_1__ ldns_dnssec_data_chain ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(ldns_dnssec_data_chain *chain)
{
	FUNC1(chain->rrset);
	FUNC1(chain->signatures);
	if (chain->parent) {
		FUNC2(chain->parent);
	}
	FUNC0(chain);
}