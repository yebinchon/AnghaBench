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
struct wpa_ctrl {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct wpa_ctrl*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_ctrl*) ; 
 struct wpa_ctrl* FUNC2 (char const*) ; 

struct wpa_ctrl * FUNC3(const char *ifname)
{
	struct wpa_ctrl *ctrl;

	ctrl = FUNC2(ifname);
	if (ctrl == NULL)
		return NULL;
	if (FUNC0(ctrl) < 0) {
		FUNC1(ctrl);
		return NULL;
	}

	return ctrl;
}