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
typedef  scalar_t__ uint16_t ;
struct auth_rrset {scalar_t__ type; struct auth_rrset* next; } ;
struct auth_data {struct auth_rrset* rrsets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct auth_rrset*) ; 

__attribute__((used)) static void
FUNC1(struct auth_data* node, uint16_t rr_type)
{
	struct auth_rrset* rrset, *prev;
	if(!node) return;
	prev = NULL;
	rrset = node->rrsets;
	while(rrset) {
		if(rrset->type == rr_type) {
			/* found it, now delete it */
			if(prev) prev->next = rrset->next;
			else	node->rrsets = rrset->next;
			FUNC0(rrset);
			return;
		}
		prev = rrset;
		rrset = rrset->next;
	}
}