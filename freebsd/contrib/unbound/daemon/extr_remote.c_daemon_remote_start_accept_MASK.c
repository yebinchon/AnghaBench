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
struct listen_list {int /*<<< orphan*/  com; struct listen_list* next; } ;
struct daemon_remote {struct listen_list* accept_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 

void FUNC1(struct daemon_remote* rc)
{
	struct listen_list* p;
	for(p=rc->accept_list; p; p=p->next) {
		FUNC0(p->com, -1, -1);	
	}
}