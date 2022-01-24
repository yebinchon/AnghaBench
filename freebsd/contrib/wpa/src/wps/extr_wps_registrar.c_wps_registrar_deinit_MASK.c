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
struct wps_registrar {int /*<<< orphan*/  multi_ap_backhaul_network_key_len; int /*<<< orphan*/  multi_ap_backhaul_network_key; int /*<<< orphan*/  extra_cred; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct wps_registrar*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct wps_registrar*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wps_registrar*) ; 
 int /*<<< orphan*/  wps_registrar_pbc_timeout ; 
 int /*<<< orphan*/  wps_registrar_set_selected_timeout ; 

void FUNC5(struct wps_registrar *reg)
{
	if (reg == NULL)
		return;
	FUNC1(wps_registrar_pbc_timeout, reg, NULL);
	FUNC1(wps_registrar_set_selected_timeout, reg, NULL);
	FUNC4(reg);
	FUNC3(reg->extra_cred);
	FUNC0(reg->multi_ap_backhaul_network_key,
		       reg->multi_ap_backhaul_network_key_len);
	FUNC2(reg);
}