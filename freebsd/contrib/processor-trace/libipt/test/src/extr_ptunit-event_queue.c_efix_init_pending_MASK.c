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
struct evq_fixture {int /*<<< orphan*/  evq; } ;
typedef  enum pt_event_binding { ____Placeholder_pt_event_binding } pt_event_binding ;

/* Variables and functions */
 int evb_max ; 
 struct pt_event* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ptunit_result FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct pt_event*) ; 

__attribute__((used)) static struct ptunit_result FUNC4(struct evq_fixture *efix)
{
	struct pt_event *ev;
	int evb;

	FUNC1(&efix->evq);

	for (evb = 0; evb < evb_max; ++evb) {
		ev = FUNC0(&efix->evq, (enum pt_event_binding) evb);
		FUNC3(ev);
	}

	return FUNC2();
}