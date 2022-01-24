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
struct wps_parse_attr {scalar_t__* wps_state; char* dev_name; int dev_name_len; scalar_t__ config_methods; scalar_t__ primary_dev_type; scalar_t__ sel_reg_config_methods; scalar_t__ dev_password_id; scalar_t__* selected_registrar; scalar_t__* ap_setup_locked; } ;
struct wpabuf {int dummy; } ;
typedef  int /*<<< orphan*/  devtype ;

/* Variables and functions */
 char* FUNC0 (scalar_t__) ; 
 int WPS_DEV_TYPE_BUFSIZE ; 
 scalar_t__ WPS_STATE_CONFIGURED ; 
 scalar_t__ WPS_STATE_NOT_CONFIGURED ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int) ; 
 int FUNC4 (char*,int,char*,...) ; 
 scalar_t__ FUNC5 (int,int) ; 
 char* FUNC6 (scalar_t__,char*,int) ; 
 scalar_t__ FUNC7 (struct wpabuf*,struct wps_parse_attr*) ; 

int FUNC8(struct wpabuf *data, char *buf, char *end)
{
	struct wps_parse_attr attr;
	char *pos = buf;
	int ret;

	if (FUNC7(data, &attr) < 0)
		return -1;

	if (attr.wps_state) {
		if (*attr.wps_state == WPS_STATE_NOT_CONFIGURED)
			ret = FUNC4(pos, end - pos,
					  "wps_state=unconfigured\n");
		else if (*attr.wps_state == WPS_STATE_CONFIGURED)
			ret = FUNC4(pos, end - pos,
					  "wps_state=configured\n");
		else
			ret = 0;
		if (FUNC5(end - pos, ret))
			return pos - buf;
		pos += ret;
	}

	if (attr.ap_setup_locked && *attr.ap_setup_locked) {
		ret = FUNC4(pos, end - pos,
				  "wps_ap_setup_locked=1\n");
		if (FUNC5(end - pos, ret))
			return pos - buf;
		pos += ret;
	}

	if (attr.selected_registrar && *attr.selected_registrar) {
		ret = FUNC4(pos, end - pos,
				  "wps_selected_registrar=1\n");
		if (FUNC5(end - pos, ret))
			return pos - buf;
		pos += ret;
	}

	if (attr.dev_password_id) {
		ret = FUNC4(pos, end - pos,
				  "wps_device_password_id=%u\n",
				  FUNC0(attr.dev_password_id));
		if (FUNC5(end - pos, ret))
			return pos - buf;
		pos += ret;
	}

	if (attr.sel_reg_config_methods) {
		ret = FUNC4(pos, end - pos,
				  "wps_selected_registrar_config_methods="
				  "0x%04x\n",
				  FUNC0(attr.sel_reg_config_methods));
		if (FUNC5(end - pos, ret))
			return pos - buf;
		pos += ret;
	}

	if (attr.primary_dev_type) {
		char devtype[WPS_DEV_TYPE_BUFSIZE];
		ret = FUNC4(pos, end - pos,
				  "wps_primary_device_type=%s\n",
				  FUNC6(attr.primary_dev_type,
						       devtype,
						       sizeof(devtype)));
		if (FUNC5(end - pos, ret))
			return pos - buf;
		pos += ret;
	}

	if (attr.dev_name) {
		char *str = FUNC3(attr.dev_name_len + 1);
		size_t i;
		if (str == NULL)
			return pos - buf;
		for (i = 0; i < attr.dev_name_len; i++) {
			if (attr.dev_name[i] == 0 ||
			    FUNC1(attr.dev_name[i]))
				str[i] = '_';
			else
				str[i] = attr.dev_name[i];
		}
		str[i] = '\0';
		ret = FUNC4(pos, end - pos, "wps_device_name=%s\n", str);
		FUNC2(str);
		if (FUNC5(end - pos, ret))
			return pos - buf;
		pos += ret;
	}

	if (attr.config_methods) {
		ret = FUNC4(pos, end - pos,
				  "wps_config_methods=0x%04x\n",
				  FUNC0(attr.config_methods));
		if (FUNC5(end - pos, ret))
			return pos - buf;
		pos += ret;
	}

	return pos - buf;
}