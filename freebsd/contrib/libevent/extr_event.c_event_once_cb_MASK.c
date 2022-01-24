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
struct TYPE_2__ {int /*<<< orphan*/  ev_base; } ;
struct event_once {TYPE_1__ ev; int /*<<< orphan*/  arg; int /*<<< orphan*/  (* cb ) (int /*<<< orphan*/ ,short,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  evutil_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct event_once*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct event_once*) ; 
 int /*<<< orphan*/  next_once ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  th_base_lock ; 

__attribute__((used)) static void
FUNC6(evutil_socket_t fd, short events, void *arg)
{
	struct event_once *eonce = arg;

	(*eonce->cb)(fd, events, eonce->arg);
	FUNC0(eonce->ev.ev_base, th_base_lock);
	FUNC2(eonce, next_once);
	FUNC1(eonce->ev.ev_base, th_base_lock);
	FUNC3(&eonce->ev);
	FUNC4(eonce);
}