#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dns_msg {TYPE_1__* rep; } ;
struct TYPE_2__ {scalar_t__ security; } ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_ALGO ; 
 scalar_t__ sec_status_bogus ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct dns_msg* ret_msg)
{
	/* validate unchecked, and re-validate bogus messages */
	if (ret_msg && ret_msg->rep->security > sec_status_bogus)
	{
		FUNC1(VERB_ALGO, "response has already been validated: %s",
			FUNC0(ret_msg->rep->security));
		return 1;
	}
	return 0;
}