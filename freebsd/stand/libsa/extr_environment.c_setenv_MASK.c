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

/* Variables and functions */
 int /*<<< orphan*/  EV_VOLATILE ; 
 int /*<<< orphan*/ * FUNC0 (char const*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC2(const char *name, const char *value, int overwrite)
{
    /* No guarantees about state, always assume volatile */
    if (overwrite || (FUNC0(name) == NULL))
	return(FUNC1(name, EV_VOLATILE, value, NULL, NULL));
    return(0);
}