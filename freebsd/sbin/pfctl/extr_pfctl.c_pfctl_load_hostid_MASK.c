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
typedef  int /*<<< orphan*/  u_int32_t ;
struct pfctl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCSETHOSTID ; 
 int /*<<< orphan*/  dev ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

int
FUNC2(struct pfctl *pf, u_int32_t hostid)
{
	if (FUNC0(dev, DIOCSETHOSTID, &hostid)) {
		FUNC1("DIOCSETHOSTID");
		return (1);
	}
	return (0);
}