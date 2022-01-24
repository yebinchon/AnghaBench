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
struct regional {char* next; char* large_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct regional*) ; 

void 
FUNC2(struct regional *r)
{
	char* p = r->next, *np;
	while(p) {
		np = *(char**)p;
		FUNC0(p);
		p = np;
	}
	p = r->large_list;
	while(p) {
		np = *(char**)p;
		FUNC0(p);
		p = np;
	}
	FUNC1(r);
}