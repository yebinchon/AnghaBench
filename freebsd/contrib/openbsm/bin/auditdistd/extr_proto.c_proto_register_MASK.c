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
struct proto {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct proto*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct proto*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  protos ; 
 int /*<<< orphan*/  prt_next ; 

void
FUNC3(struct proto *proto, bool isdefault)
{
	static bool seen_default = false;

	if (!isdefault)
		FUNC1(&protos, proto, prt_next);
	else {
		FUNC0(!seen_default);
		seen_default = true;
		FUNC2(&protos, proto, prt_next);
	}
}