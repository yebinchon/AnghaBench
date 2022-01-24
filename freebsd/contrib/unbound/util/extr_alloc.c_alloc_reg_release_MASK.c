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
struct regional {char* next; } ;
struct alloc_cache {scalar_t__ num_reg_blocks; scalar_t__ max_reg_blocks; struct regional* reg_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct regional*) ; 
 int /*<<< orphan*/  FUNC2 (struct regional*) ; 

void 
FUNC3(struct alloc_cache* alloc, struct regional* r)
{
	if(alloc->num_reg_blocks >= alloc->max_reg_blocks) {
		FUNC1(r);
		return;
	}
	if(!r) return;
	FUNC2(r);
	FUNC0(r->next == NULL);
	r->next = (char*)alloc->reg_list;
	alloc->reg_list = r;
	alloc->num_reg_blocks++;
}