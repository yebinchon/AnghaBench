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
struct wake_addr {scalar_t__ value; struct wake_addr* link; } ;
struct pthread {int dummy; } ;

/* Variables and functions */
 int MAP_ANON ; 
 int MAP_PRIVATE ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct pthread*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pthread*,int /*<<< orphan*/ *) ; 
 struct pthread* FUNC2 () ; 
 int /*<<< orphan*/ * _thr_initial ; 
 int /*<<< orphan*/  addr_lock ; 
 struct wake_addr default_wake_addr ; 
 unsigned int FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,unsigned int,int,int,int,int /*<<< orphan*/ ) ; 
 struct wake_addr* wake_addr_head ; 

struct wake_addr *
FUNC5(void)
{
	struct pthread *curthread;
	struct wake_addr *p;

	if (_thr_initial == NULL) {
		return &default_wake_addr;
	}

	curthread = FUNC2();

	FUNC0(curthread, &addr_lock);
	if (wake_addr_head == NULL) {
		unsigned i;
		unsigned pagesize = FUNC3();
		struct wake_addr *pp = (struct wake_addr *)
			FUNC4(NULL, FUNC3(), PROT_READ|PROT_WRITE,
			MAP_ANON|MAP_PRIVATE, -1, 0);
		for (i = 1; i < pagesize/sizeof(struct wake_addr); ++i)
			pp[i].link = &pp[i+1];
		pp[i-1].link = NULL;	
		wake_addr_head = &pp[1];
		p = &pp[0];
	} else {
		p = wake_addr_head;
		wake_addr_head = p->link;
	}
	FUNC1(curthread, &addr_lock);
	p->value = 0;
	return (p);
}