#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct auth_xfer {struct auth_master* allow_notify_list; TYPE_1__* task_probe; } ;
struct auth_master {struct auth_master* next; } ;
struct TYPE_2__ {struct auth_master* masters; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct auth_master*) ; 
 struct auth_master* FUNC1 (struct auth_master*) ; 

__attribute__((used)) static void
FUNC2(struct auth_xfer* xfr)
{
	struct auth_master* list = NULL, *last = NULL;
	struct auth_master* p;
	/* build up new list with copies */
	for(p = xfr->task_probe->masters; p; p=p->next) {
		struct auth_master* m = FUNC1(p);
		if(!m) {
			FUNC0(list);
			/* failed because of malloc failure, use old list */
			return;
		}
		m->next = NULL;
		if(last) last->next = m;
		if(!list) list = m;
		last = m;
	}
	/* success, replace list */
	FUNC0(xfr->allow_notify_list);
	xfr->allow_notify_list = list;
}