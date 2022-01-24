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
struct comm_base {struct comm_base* eb; int /*<<< orphan*/ * base; int /*<<< orphan*/  slow_accept; scalar_t__ slow_accept_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct comm_base*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void 
FUNC4(struct comm_base* b)
{
	if(!b)
		return;
	if(b->eb->slow_accept_enabled) {
		if(FUNC2(b->eb->slow_accept) != 0) {
			FUNC1("could not event_del slow_accept");
		}
		FUNC3(b->eb->slow_accept);
	}
	b->eb->base = NULL;
	FUNC0(b->eb);
	FUNC0(b);
}