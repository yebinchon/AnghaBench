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
 int /*<<< orphan*/  DEVF_FORCE_DELETE ; 
 int /*<<< orphan*/  DEV_DELETE ; 
 int FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

int
FUNC1(const char *device, bool force)
{

	return (FUNC0(DEV_DELETE, device, force ?
	    DEVF_FORCE_DELETE : 0));
}