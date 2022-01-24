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
typedef  int /*<<< orphan*/  uint8_t ;
struct tube_res_list {size_t len; struct tube_res_list* next; int /*<<< orphan*/ * buf; } ;
struct tube {int /*<<< orphan*/  res_com; struct tube_res_list* res_last; struct tube_res_list* res_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(struct tube* tube, uint8_t* msg, size_t len)
{
	struct tube_res_list* item;
	if(!tube || !tube->res_com) return 0;
	item = (struct tube_res_list*)FUNC3(sizeof(*item));
	if(!item) {
		FUNC1(msg);
		FUNC2("out of memory for async answer");
		return 0;
	}
	item->buf = msg;
	item->len = len;
	item->next = NULL;
	/* add at back of list, since the first one may be partially written */
	if(tube->res_last)
		tube->res_last->next = item;
	else    tube->res_list = item;
	tube->res_last = item;
	if(tube->res_list == tube->res_last) {
		/* first added item, start the write process */
		FUNC0(tube->res_com, -1, -1);
	}
	return 1;
}