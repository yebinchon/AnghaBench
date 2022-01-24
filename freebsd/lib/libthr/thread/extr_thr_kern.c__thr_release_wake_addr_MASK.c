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
struct wake_addr {struct wake_addr* link; } ;
struct pthread {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pthread*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pthread*,int /*<<< orphan*/ *) ; 
 struct pthread* FUNC2 () ; 
 int /*<<< orphan*/  addr_lock ; 
 struct wake_addr default_wake_addr ; 
 struct wake_addr* wake_addr_head ; 

void
FUNC3(struct wake_addr *wa)
{
	struct pthread *curthread = FUNC2();

	if (wa == &default_wake_addr)
		return;
	FUNC0(curthread, &addr_lock);
	wa->link = wake_addr_head;
	wake_addr_head = wa;
	FUNC1(curthread, &addr_lock);
}