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
struct auth_rrset {struct auth_rrset* next; } ;
struct auth_data {struct auth_data* name; struct auth_rrset* rrsets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct auth_rrset*) ; 
 int /*<<< orphan*/  FUNC1 (struct auth_data*) ; 

__attribute__((used)) static void
FUNC2(struct auth_data* n)
{
	struct auth_rrset* p, *np;
	if(!n) return;
	p = n->rrsets;
	while(p) {
		np = p->next;
		FUNC0(p);
		p = np;
	}
	FUNC1(n->name);
	FUNC1(n);
}