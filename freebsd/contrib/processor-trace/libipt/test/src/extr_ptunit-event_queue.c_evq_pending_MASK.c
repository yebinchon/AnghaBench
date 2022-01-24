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
struct evq_fixture {int /*<<< orphan*/  evq; } ;
typedef  enum pt_event_binding { ____Placeholder_pt_event_binding } pt_event_binding ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC4 () ; 

__attribute__((used)) static struct ptunit_result FUNC5(struct evq_fixture *efix,
					enum pt_event_binding evb)
{
	int status;

	status = FUNC0(&efix->evq, evb);
	FUNC2(status, 0);

	status = FUNC1(&efix->evq, evb);
	FUNC3(status, 0);

	return FUNC4();
}