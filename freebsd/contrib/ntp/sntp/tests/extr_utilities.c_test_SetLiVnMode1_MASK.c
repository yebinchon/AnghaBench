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
struct pkt {int /*<<< orphan*/  li_vn_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  LEAP_NOWARNING ; 
 int /*<<< orphan*/  MODE_SERVER ; 
 int /*<<< orphan*/  NTP_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pkt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(void) {
	struct pkt expected;
	expected.li_vn_mode = FUNC0(LEAP_NOWARNING,
					     NTP_VERSION,
					     MODE_SERVER);

	struct pkt actual;
	FUNC2(&actual, LEAP_NOWARNING, NTP_VERSION,
				   MODE_SERVER);

	FUNC1(expected.li_vn_mode, actual.li_vn_mode);
}