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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ntpEntSoftwareName ; 
 int /*<<< orphan*/  ntpEntSoftwareVendor ; 
 int /*<<< orphan*/  ntpEntSoftwareVersion ; 
 int /*<<< orphan*/  ntpEntSystemType ; 
 int /*<<< orphan*/  ntpEntTimeDistance ; 
 int /*<<< orphan*/  ntpEntTimePrecision ; 
 int /*<<< orphan*/  ntpEntTimeResolution ; 

void
FUNC1(void)
{
	/* Register all MIB objects with the agentx master */
	FUNC0( ntpEntSoftwareName,		1, 1, 1, 0);
	FUNC0( ntpEntSoftwareVersion,	1, 1, 2, 0);
	FUNC0( ntpEntSoftwareVendor,	1, 1, 3, 0);
	FUNC0( ntpEntSystemType,		1, 1, 4, 0);
	FUNC0( ntpEntTimeResolution,	1, 1, 5, 0);
	FUNC0( ntpEntTimePrecision,	1, 1, 6, 0);
	FUNC0( ntpEntTimeDistance,		1, 1, 7, 0);
}