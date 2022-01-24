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
struct trust_anchor {struct trust_anchor* name; struct trust_anchor* autr; struct trust_anchor* file; struct trust_anchor* rr; struct trust_anchor* next; struct trust_anchor* keys; int /*<<< orphan*/  dnskey_rrset; int /*<<< orphan*/  ds_rrset; int /*<<< orphan*/  lock; } ;
struct autr_ta {struct autr_ta* name; struct autr_ta* autr; struct autr_ta* file; struct autr_ta* rr; struct autr_ta* next; struct autr_ta* keys; int /*<<< orphan*/  dnskey_rrset; int /*<<< orphan*/  ds_rrset; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct trust_anchor*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct trust_anchor*) ; 

void FUNC4(struct trust_anchor* tp)
{
	if(!tp)
		return;
	FUNC3(&tp->lock, tp);
	FUNC3(&tp->lock, tp->autr);
	FUNC2(&tp->lock);
	FUNC0(tp->ds_rrset);
	FUNC0(tp->dnskey_rrset);
	if(tp->autr) {
		struct autr_ta* p = tp->autr->keys, *np;
		while(p) {
			np = p->next;
			FUNC1(p->rr);
			FUNC1(p);
			p = np;
		}
		FUNC1(tp->autr->file);
		FUNC1(tp->autr);
	}
	FUNC1(tp->name);
	FUNC1(tp);
}