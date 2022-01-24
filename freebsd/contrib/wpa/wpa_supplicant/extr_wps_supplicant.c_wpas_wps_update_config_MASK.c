#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int config_methods; int num_sec_dev_types; int /*<<< orphan*/  serial_number; int /*<<< orphan*/  model_number; int /*<<< orphan*/  model_name; int /*<<< orphan*/  manufacturer; int /*<<< orphan*/  device_name; int /*<<< orphan*/  os_version; int /*<<< orphan*/  sec_dev_type; int /*<<< orphan*/  pri_dev_type; } ;
struct wps_context {int config_methods; TYPE_1__ dev; } ;
struct wpa_supplicant {TYPE_2__* conf; struct wps_context* wps; } ;
struct TYPE_4__ {int changed_parameters; int num_sec_device_types; int /*<<< orphan*/  serial_number; int /*<<< orphan*/  model_number; int /*<<< orphan*/  model_name; int /*<<< orphan*/  manufacturer; int /*<<< orphan*/  device_name; int /*<<< orphan*/  os_version; int /*<<< orphan*/  sec_device_type; int /*<<< orphan*/  device_type; int /*<<< orphan*/  config_methods; } ;

/* Variables and functions */
 int CFG_CHANGED_CONFIG_METHODS ; 
 int CFG_CHANGED_DEVICE_NAME ; 
 int CFG_CHANGED_DEVICE_TYPE ; 
 int CFG_CHANGED_OS_VERSION ; 
 int CFG_CHANGED_SEC_DEVICE_TYPE ; 
 int CFG_CHANGED_UUID ; 
 int CFG_CHANGED_VENDOR_EXTENSION ; 
 int CFG_CHANGED_WPS_STRING ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int WPS_CONFIG_DISPLAY ; 
 int WPS_CONFIG_LABEL ; 
 int WPS_DEV_TYPE_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*,struct wps_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*,struct wps_context*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int) ; 

void FUNC7(struct wpa_supplicant *wpa_s)
{
	struct wps_context *wps = wpa_s->wps;

	if (wps == NULL)
		return;

	if (wpa_s->conf->changed_parameters & CFG_CHANGED_CONFIG_METHODS) {
		wps->config_methods = FUNC5(
			wpa_s->conf->config_methods);
		if ((wps->config_methods &
		     (WPS_CONFIG_DISPLAY | WPS_CONFIG_LABEL)) ==
		    (WPS_CONFIG_DISPLAY | WPS_CONFIG_LABEL)) {
			FUNC2(MSG_ERROR, "WPS: Both Label and Display "
				   "config methods are not allowed at the "
				   "same time");
			wps->config_methods &= ~WPS_CONFIG_LABEL;
		}
	}
	wps->config_methods = FUNC6(wps->config_methods);
	wps->dev.config_methods = wps->config_methods;

	if (wpa_s->conf->changed_parameters & CFG_CHANGED_DEVICE_TYPE)
		FUNC1(wps->dev.pri_dev_type, wpa_s->conf->device_type,
			  WPS_DEV_TYPE_LEN);

	if (wpa_s->conf->changed_parameters & CFG_CHANGED_SEC_DEVICE_TYPE) {
		wps->dev.num_sec_dev_types = wpa_s->conf->num_sec_device_types;
		FUNC1(wps->dev.sec_dev_type, wpa_s->conf->sec_device_type,
			  wps->dev.num_sec_dev_types * WPS_DEV_TYPE_LEN);
	}

	if (wpa_s->conf->changed_parameters & CFG_CHANGED_VENDOR_EXTENSION)
		FUNC4(wpa_s, wps);

	if (wpa_s->conf->changed_parameters & CFG_CHANGED_OS_VERSION)
		wps->dev.os_version = FUNC0(wpa_s->conf->os_version);

	if (wpa_s->conf->changed_parameters & CFG_CHANGED_UUID)
		FUNC3(wpa_s, wps);

	if (wpa_s->conf->changed_parameters &
	    (CFG_CHANGED_DEVICE_NAME | CFG_CHANGED_WPS_STRING)) {
		/* Update pointers to make sure they refer current values */
		wps->dev.device_name = wpa_s->conf->device_name;
		wps->dev.manufacturer = wpa_s->conf->manufacturer;
		wps->dev.model_name = wpa_s->conf->model_name;
		wps->dev.model_number = wpa_s->conf->model_number;
		wps->dev.serial_number = wpa_s->conf->serial_number;
	}
}