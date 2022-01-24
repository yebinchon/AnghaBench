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
struct TYPE_2__ {uintptr_t th_p; scalar_t__ data; int /*<<< orphan*/  event; } ;
struct pthread {TYPE_1__ event_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  TD_CREATE ; 
 int /*<<< orphan*/  FUNC0 (struct pthread*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pthread*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _thr_event_lock ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct pthread* _thread_last_event ; 

void
FUNC3(struct pthread *curthread, struct pthread *newthread)
{
	curthread->event_buf.event = TD_CREATE;
	curthread->event_buf.th_p = (uintptr_t)newthread;
	curthread->event_buf.data = 0;
	FUNC0(curthread, &_thr_event_lock);
	_thread_last_event = curthread;
	FUNC2();
	_thread_last_event = NULL;
	FUNC1(curthread, &_thr_event_lock);
}