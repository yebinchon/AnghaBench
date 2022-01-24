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
struct wps_registrar {int dummy; } ;
struct wps_parse_attr {scalar_t__* selected_registrar; int authorized_macs_len; int /*<<< orphan*/  version2; scalar_t__ authorized_macs; scalar_t__ sel_reg_config_methods; scalar_t__ dev_password_id; } ;
struct wpabuf {int dummy; } ;
struct subscription {int selected_registrar; int dev_password_id; int config_methods; int /*<<< orphan*/  authorized_macs; struct wps_registrar* reg; } ;

/* Variables and functions */
 int DEV_PW_DEFAULT ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int FUNC0 (scalar_t__) ; 
 int WPS_MAX_AUTHORIZED_MACS ; 
 int /*<<< orphan*/  WPS_PBC_WALK_TIME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct subscription*,struct wps_registrar*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct subscription*,struct wps_registrar*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  upnp_er_set_selected_timeout ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (struct wpabuf const*,struct wps_parse_attr*) ; 
 int /*<<< orphan*/  FUNC8 (struct wps_registrar*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct wpabuf const*) ; 

int FUNC10(struct wps_registrar *reg,
				   struct subscription *s,
				   const struct wpabuf *msg)
{
	struct wps_parse_attr attr;

	FUNC5(MSG_MSGDUMP, "WPS: SetSelectedRegistrar attributes",
			msg);
	if (FUNC9(msg) < 0 ||
	    FUNC7(msg, &attr) < 0)
		return -1;

	s->reg = reg;
	FUNC1(upnp_er_set_selected_timeout, s, reg);

	FUNC4(s->authorized_macs, 0, sizeof(s->authorized_macs));
	if (attr.selected_registrar == NULL || *attr.selected_registrar == 0) {
		FUNC6(MSG_DEBUG, "WPS: SetSelectedRegistrar: Disable "
			   "Selected Registrar");
		s->selected_registrar = 0;
	} else {
		s->selected_registrar = 1;
		s->dev_password_id = attr.dev_password_id ?
			FUNC0(attr.dev_password_id) : DEV_PW_DEFAULT;
		s->config_methods = attr.sel_reg_config_methods ?
			FUNC0(attr.sel_reg_config_methods) : -1;
		if (attr.authorized_macs) {
			int count = attr.authorized_macs_len / ETH_ALEN;
			if (count > WPS_MAX_AUTHORIZED_MACS)
				count = WPS_MAX_AUTHORIZED_MACS;
			FUNC3(s->authorized_macs, attr.authorized_macs,
				  count * ETH_ALEN);
		} else if (!attr.version2) {
			FUNC6(MSG_DEBUG, "WPS: Add broadcast "
				   "AuthorizedMACs for WPS 1.0 ER");
			FUNC4(s->authorized_macs, 0xff, ETH_ALEN);
		}
		FUNC2(WPS_PBC_WALK_TIME, 0,
				       upnp_er_set_selected_timeout, s, reg);
	}

	FUNC8(reg, 0);

	return 0;
}