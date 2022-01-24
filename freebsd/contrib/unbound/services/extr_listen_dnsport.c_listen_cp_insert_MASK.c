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
struct listen_list {struct listen_list* next; struct comm_point* com; } ;
struct listen_dnsport {struct listen_list* cps; } ;
struct comm_point {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 

__attribute__((used)) static int
FUNC1(struct comm_point* c, struct listen_dnsport* front)
{
	struct listen_list* item = (struct listen_list*)FUNC0(
		sizeof(struct listen_list));
	if(!item)
		return 0;
	item->com = c;
	item->next = front->cps;
	front->cps = item;
	return 1;
}