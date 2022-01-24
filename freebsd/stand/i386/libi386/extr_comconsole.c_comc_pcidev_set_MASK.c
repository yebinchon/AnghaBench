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
typedef  scalar_t__ uint32_t ;
struct env_var {int /*<<< orphan*/  ev_name; } ;
struct TYPE_2__ {int c_flags; } ;

/* Variables and functions */
 int CMD_ERROR ; 
 int CMD_OK ; 
 int C_ACTIVEIN ; 
 int C_ACTIVEOUT ; 
 int EV_NOHOOK ; 
 scalar_t__ comc_locator ; 
 scalar_t__ FUNC0 (void const*) ; 
 int FUNC1 (scalar_t__) ; 
 TYPE_1__ comconsole ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,void const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(struct env_var *ev, int flags, const void *value)
{
	uint32_t locator;
	int error;

	if (value == NULL || (locator = FUNC0(value)) <= 0) {
		FUNC3("Invalid pcidev\n");
		return (CMD_ERROR);
	}
	if ((comconsole.c_flags & (C_ACTIVEIN | C_ACTIVEOUT)) != 0 &&
	    comc_locator != locator) {
		error = FUNC1(locator);
		if (error != CMD_OK)
			return (error);
	}
	FUNC2(ev->ev_name, flags | EV_NOHOOK, value, NULL, NULL);
	return (CMD_OK);
}