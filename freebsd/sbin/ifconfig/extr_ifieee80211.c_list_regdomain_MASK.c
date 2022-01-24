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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  chaninfo ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  regdomain ; 
 char spacer ; 
 int verbose ; 

__attribute__((used)) static void
FUNC5(int s, int channelsalso)
{
	FUNC2(s);
	if (channelsalso) {
		FUNC1(s);
		spacer = ':';
		FUNC4(&regdomain, 1);
		FUNC0();
		FUNC3(s, chaninfo, 1/*allchans*/, 1/*verbose*/);
	} else
		FUNC4(&regdomain, verbose);
}