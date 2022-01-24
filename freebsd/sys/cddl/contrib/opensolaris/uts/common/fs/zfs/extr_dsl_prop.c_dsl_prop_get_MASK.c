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
typedef  int /*<<< orphan*/  objset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*,int,int,void*,char*) ; 

int
FUNC4(const char *dsname, const char *propname,
    int intsz, int numints, void *buf, char *setpoint)
{
	objset_t *os;
	int error;

	error = FUNC1(dsname, FTAG, &os);
	if (error != 0)
		return (error);

	error = FUNC3(FUNC0(os), propname,
	    intsz, numints, buf, setpoint);

	FUNC2(os, FTAG);
	return (error);
}