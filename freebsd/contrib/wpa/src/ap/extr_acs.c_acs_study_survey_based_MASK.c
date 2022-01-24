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
struct hostapd_iface {int /*<<< orphan*/  chans_surveyed; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct hostapd_iface*) ; 
 int /*<<< orphan*/  FUNC1 (struct hostapd_iface*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(struct hostapd_iface *iface)
{
	FUNC2(MSG_DEBUG, "ACS: Trying survey-based ACS");

	if (!iface->chans_surveyed) {
		FUNC2(MSG_ERROR, "ACS: Unable to collect survey data");
		return -1;
	}

	if (!FUNC1(iface)) {
		FUNC2(MSG_ERROR, "ACS: Surveys have insufficient data");
		return -1;
	}

	FUNC0(iface);
	return 0;
}