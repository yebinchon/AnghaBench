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
struct pt_event {int /*<<< orphan*/  status_update; int /*<<< orphan*/  ip_suppressed; } ;
struct evq_fixture {int /*<<< orphan*/  evq; } ;

/* Variables and functions */
 struct pt_event* FUNC0 (int /*<<< orphan*/ *) ; 
 struct ptunit_result FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct pt_event*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static struct ptunit_result FUNC4(struct evq_fixture *efix)
{
	struct pt_event *ev;

	ev = FUNC0(&efix->evq);
	FUNC2(ev);
	FUNC3(ev->ip_suppressed, 0ul);
	FUNC3(ev->status_update, 0ul);

	return FUNC1();
}