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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(int port_id, int mgmt, uint8_t rmpp_version)
{
	int vers, agent;

	if ((vers = FUNC1(mgmt)) <= 0) {
		FUNC0("Unknown class %d mgmt_class", mgmt);
		return -1;
	}

	agent = FUNC2(port_id, mgmt, vers, rmpp_version, 0);
	if (agent < 0)
		FUNC0("Can't register agent for class %d", mgmt);

	return agent;
}