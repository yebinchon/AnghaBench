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
struct policyqueue {int dummy; } ;
struct policyhead {int dummy; } ;

/* Variables and functions */
 struct policyqueue* FUNC0 (struct policyhead*) ; 
 struct policyqueue* FUNC1 (struct policyqueue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct policyhead*,struct policyqueue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct policyqueue*) ; 
 int /*<<< orphan*/  pc_entry ; 

__attribute__((used)) static void
FUNC4(struct policyhead *head)
{
	struct policyqueue *ent, *nent;

	for (ent = FUNC0(head); ent; ent = nent) {
		nent = FUNC1(ent, pc_entry);
		FUNC2(head, ent, pc_entry);
		FUNC3(ent);
	}
}