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
 scalar_t__ DPV_APROMPT_MAX ; 
 int DPV_DISPLAY_LIMIT ; 
 scalar_t__ DPV_PPROMPT_MAX ; 
 int /*<<< orphan*/  dheight ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  dwidth ; 
 int /*<<< orphan*/  gauge ; 
 int gauge_percent ; 
 char* title ; 

void
FUNC3(const char *prefix, const char *append, int overall)
{
	int percent = gauge_percent;
	char buf[DPV_PPROMPT_MAX + DPV_APROMPT_MAX + DPV_DISPLAY_LIMIT * 1024];

	FUNC2(buf, prefix, append);

	if (overall >= 0 && overall <= 100)
		gauge_percent = percent = overall;
	gauge = FUNC0(gauge, title == NULL ? "" : title,
	    buf, dheight, dwidth, percent);
	FUNC1(gauge, percent);
}