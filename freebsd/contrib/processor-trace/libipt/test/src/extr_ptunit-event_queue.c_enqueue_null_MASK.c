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
struct ptunit_result {int dummy; } ;
struct pt_event {int dummy; } ;
typedef  enum pt_event_binding { ____Placeholder_pt_event_binding } pt_event_binding ;

/* Variables and functions */
 struct pt_event* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_event*) ; 
 struct ptunit_result FUNC2 () ; 

__attribute__((used)) static struct ptunit_result FUNC3(enum pt_event_binding evb)
{
	struct pt_event *ev;

	ev = FUNC0(NULL, evb);
	FUNC1(ev);

	return FUNC2();
}