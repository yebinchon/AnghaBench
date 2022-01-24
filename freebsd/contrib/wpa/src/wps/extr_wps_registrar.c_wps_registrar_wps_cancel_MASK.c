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
struct wps_registrar {scalar_t__ selected_registrar; scalar_t__ pbc; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  (*) (struct wps_registrar*,int /*<<< orphan*/ *),struct wps_registrar*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wps_registrar*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wps_registrar*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct wps_registrar*) ; 

int FUNC5(struct wps_registrar *reg)
{
	if (reg->pbc) {
		FUNC1(MSG_DEBUG, "WPS: PBC is set - cancelling it");
		FUNC3(reg, NULL);
		FUNC0(wps_registrar_pbc_timeout, reg, NULL);
		return 1;
	} else if (reg->selected_registrar) {
		/* PIN Method */
		FUNC1(MSG_DEBUG, "WPS: PIN is set - cancelling it");
		FUNC4(reg);
		FUNC2(reg, NULL, 0);
		return 1;
	}
	return 0;
}