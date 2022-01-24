#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
struct mtx {int dummy; } ;
struct cam_path {TYPE_2__* device; } ;
struct async_node {int event_enable; int /*<<< orphan*/  callback_arg; int /*<<< orphan*/  (* callback ) (int /*<<< orphan*/ ,int,struct cam_path*,void*) ;scalar_t__ event_lock; } ;
struct async_list {int dummy; } ;
struct TYPE_4__ {TYPE_1__* sim; } ;
struct TYPE_3__ {struct mtx* mtx; } ;

/* Variables and functions */
 struct async_node* FUNC0 (struct async_list*) ; 
 struct async_node* FUNC1 (struct async_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC2 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,struct cam_path*,void*) ; 

__attribute__((used)) static void
FUNC5(struct async_list *async_head,
		u_int32_t async_code,
		struct cam_path *path, void *async_arg)
{
	struct async_node *cur_entry;
	struct mtx *mtx;

	cur_entry = FUNC0(async_head);
	while (cur_entry != NULL) {
		struct async_node *next_entry;
		/*
		 * Grab the next list entry before we call the current
		 * entry's callback.  This is because the callback function
		 * can delete its async callback entry.
		 */
		next_entry = FUNC1(cur_entry, links);
		if ((cur_entry->event_enable & async_code) != 0) {
			mtx = cur_entry->event_lock ?
			    path->device->sim->mtx : NULL;
			if (mtx)
				FUNC2(mtx);
			cur_entry->callback(cur_entry->callback_arg,
					    async_code, path,
					    async_arg);
			if (mtx)
				FUNC3(mtx);
		}
		cur_entry = next_entry;
	}
}