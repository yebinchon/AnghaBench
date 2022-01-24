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
struct waiting_tcp {scalar_t__ timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct waiting_tcp*) ; 

__attribute__((used)) static void
FUNC2(struct waiting_tcp* w)
{
	if(!w) return;
	if(w->timer)
		FUNC0(w->timer);
	FUNC1(w);
}