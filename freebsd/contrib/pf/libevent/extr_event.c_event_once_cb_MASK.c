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
struct event_once {int /*<<< orphan*/  arg; int /*<<< orphan*/  (* cb ) (int,short,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct event_once*) ; 
 int /*<<< orphan*/  FUNC1 (int,short,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(int fd, short events, void *arg)
{
	struct event_once *eonce = arg;

	(*eonce->cb)(fd, events, eonce->arg);
	FUNC0(eonce);
}