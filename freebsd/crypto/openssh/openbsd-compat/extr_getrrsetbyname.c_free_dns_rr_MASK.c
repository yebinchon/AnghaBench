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
struct dns_rr {struct dns_rr* next; struct dns_rr* rdata; struct dns_rr* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dns_rr*) ; 

__attribute__((used)) static void
FUNC1(struct dns_rr *p)
{
	if (p == NULL)
		return;

	if (p->name)
		FUNC0(p->name);
	if (p->rdata)
		FUNC0(p->rdata);
	FUNC1(p->next);
	FUNC0(p);
}