#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct wps_registrar {int sel_reg_dev_password_id_override; int sel_reg_config_methods_override; scalar_t__ pbc; TYPE_1__* wps; scalar_t__ selected_registrar; scalar_t__ authorized_macs_union; int /*<<< orphan*/  authorized_macs; scalar_t__ sel_reg_union; } ;
struct TYPE_2__ {int config_methods; } ;

/* Variables and functions */
 int DEV_PW_PUSHBUTTON ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int WPS_CONFIG_PHY_PUSHBUTTON ; 
 int WPS_CONFIG_PUSHBUTTON ; 
 int WPS_CONFIG_VIRT_PUSHBUTTON ; 
 int WPS_MAX_AUTHORIZED_MACS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct wps_registrar*) ; 
 int /*<<< orphan*/  FUNC4 (struct wps_registrar*) ; 
 int /*<<< orphan*/  FUNC5 (struct wps_registrar*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int) ; 

void FUNC7(struct wps_registrar *reg,
					      u16 dev_pw_id)
{
	FUNC2(MSG_DEBUG, "WPS: Selected registrar information changed");

	reg->sel_reg_union = reg->selected_registrar;
	reg->sel_reg_dev_password_id_override = -1;
	reg->sel_reg_config_methods_override = -1;
	FUNC0(reg->authorized_macs_union, reg->authorized_macs,
		  WPS_MAX_AUTHORIZED_MACS * ETH_ALEN);
	FUNC1(MSG_DEBUG, "WPS: Authorized MACs union (start with own)",
		    (u8 *) reg->authorized_macs_union,
		    sizeof(reg->authorized_macs_union));
	if (reg->selected_registrar) {
		u16 methods;

		methods = reg->wps->config_methods & ~WPS_CONFIG_PUSHBUTTON;
		methods &= ~(WPS_CONFIG_VIRT_PUSHBUTTON |
			     WPS_CONFIG_PHY_PUSHBUTTON);
		if (reg->pbc) {
			reg->sel_reg_dev_password_id_override =
				DEV_PW_PUSHBUTTON;
			FUNC6(&methods, reg->wps->config_methods);
		} else if (dev_pw_id)
			reg->sel_reg_dev_password_id_override = dev_pw_id;
		FUNC2(MSG_DEBUG, "WPS: Internal Registrar selected "
			   "(pbc=%d)", reg->pbc);
		reg->sel_reg_config_methods_override = methods;
	} else
		FUNC2(MSG_DEBUG, "WPS: Internal Registrar not selected");

	FUNC4(reg);

	FUNC5(reg);
	FUNC3(reg);
}