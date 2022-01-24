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
struct tube_res_list {struct tube_res_list* buf; struct tube_res_list* next; } ;
struct tube {int /*<<< orphan*/ * res_last; struct tube_res_list* res_list; int /*<<< orphan*/ * res_com; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tube_res_list*) ; 

void FUNC2(struct tube* tube)
{
	if(tube->res_com) {
		FUNC0(tube->res_com);
		tube->res_com = NULL;
	}
	if(tube->res_list) {
		struct tube_res_list* np, *p = tube->res_list;
		tube->res_list = NULL;
		tube->res_last = NULL;
		while(p) {
			np = p->next;
			FUNC1(p->buf);
			FUNC1(p);
			p = np;
		}
	}
}