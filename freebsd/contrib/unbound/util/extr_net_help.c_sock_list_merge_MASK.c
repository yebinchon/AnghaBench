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
struct sock_list {int /*<<< orphan*/  len; int /*<<< orphan*/  addr; struct sock_list* next; } ;
struct regional {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock_list*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock_list**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct regional*) ; 

void FUNC2(struct sock_list** list, struct regional* region,
	struct sock_list* add)
{
	struct sock_list* p;
	for(p=add; p; p=p->next) {
		if(!FUNC0(*list, &p->addr, p->len))
			FUNC1(list, &p->addr, p->len, region);
	}
}