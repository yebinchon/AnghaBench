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
struct ub_event_base {int dummy; } ;
struct internal_base {struct ub_event_base* base; } ;
struct comm_base {struct internal_base* eb; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct comm_base*) ; 
 int /*<<< orphan*/  FUNC2 (struct comm_base*) ; 

struct comm_base*
FUNC3(struct ub_event_base* base)
{
	struct comm_base* b = (struct comm_base*)FUNC0(1,
		sizeof(struct comm_base));
	if(!b)
		return NULL;
	b->eb = (struct internal_base*)FUNC0(1, sizeof(struct internal_base));
	if(!b->eb) {
		FUNC1(b);
		return NULL;
	}
	b->eb->base = base;
	FUNC2(b);
	return b;
}