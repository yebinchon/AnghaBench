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
struct evconnlistener {int refcnt; int /*<<< orphan*/  lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* destroy ) (struct evconnlistener*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVTHREAD_LOCKTYPE_RECURSIVE ; 
 int /*<<< orphan*/  FUNC1 (struct evconnlistener*) ; 
 int /*<<< orphan*/  FUNC2 (struct evconnlistener*) ; 
 int /*<<< orphan*/  FUNC3 (struct evconnlistener*) ; 

__attribute__((used)) static int
FUNC4(struct evconnlistener *listener)
{
	int refcnt = --listener->refcnt;
	if (refcnt == 0) {
		listener->ops->destroy(listener);
		FUNC1(listener);
		FUNC0(listener->lock, EVTHREAD_LOCKTYPE_RECURSIVE);
		FUNC2(listener);
		return 1;
	} else {
		FUNC1(listener);
		return 0;
	}
}