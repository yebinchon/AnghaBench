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
 int /*<<< orphan*/  evq_empty ; 
 int evq_max ; 
 int /*<<< orphan*/  evq_others_empty ; 
 int /*<<< orphan*/  evq_pending ; 
 struct pt_event* FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct pt_event* FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct ptunit_result FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct pt_event*) ; 
 int /*<<< orphan*/  FUNC4 (struct pt_event*,struct pt_event*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct evq_fixture*,int) ; 
 int /*<<< orphan*/  FUNC6 (size_t,int) ; 

__attribute__((used)) static struct ptunit_result FUNC7(struct evq_fixture *efix,
						enum pt_event_binding evb,
						size_t num)
{
	struct pt_event *in[evq_max], *out[evq_max];
	size_t idx;

	FUNC6(num, evq_max - 2);

	for (idx = 0; idx < num; ++idx) {
		in[idx] = FUNC1(&efix->evq, evb);
		FUNC3(in[idx]);
	}

	FUNC5(evq_pending, efix, evb);
	FUNC5(evq_others_empty, efix, evb);

	for (idx = 0; idx < num; ++idx) {
		out[idx] = FUNC0(&efix->evq, evb);
		FUNC4(out[idx], in[idx]);
	}

	FUNC5(evq_empty, efix, evb);

	return FUNC2();
}