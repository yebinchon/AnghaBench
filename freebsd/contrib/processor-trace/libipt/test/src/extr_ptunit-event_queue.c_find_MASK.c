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
struct pt_event {int type; } ;
struct evq_fixture {int /*<<< orphan*/  evq; } ;
typedef  enum pt_event_type { ____Placeholder_pt_event_type } pt_event_type ;
typedef  enum pt_event_binding { ____Placeholder_pt_event_binding } pt_event_binding ;

/* Variables and functions */
 int /*<<< orphan*/  evq_enqueue_other ; 
 struct pt_event* FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct pt_event* FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 struct ptunit_result FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct pt_event*) ; 
 int /*<<< orphan*/  FUNC4 (struct pt_event*,struct pt_event*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct evq_fixture*,int,int,size_t) ; 

__attribute__((used)) static struct ptunit_result FUNC6(struct evq_fixture *efix,
				 enum pt_event_binding evb,
				 enum pt_event_type evt,
				 size_t before, size_t after)
{
	struct pt_event *in, *out;

	FUNC5(evq_enqueue_other, efix, evb, evt, before);

	in = FUNC0(&efix->evq, evb);
	FUNC3(in);

	in->type = evt;

	FUNC5(evq_enqueue_other, efix, evb, evt, after);

	out = FUNC1(&efix->evq, evb, evt);
	FUNC4(out, in);

	return FUNC2();
}