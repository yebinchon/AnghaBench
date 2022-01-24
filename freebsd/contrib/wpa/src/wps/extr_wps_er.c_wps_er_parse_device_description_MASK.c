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
struct wps_er_ap {void* event_sub_url; int /*<<< orphan*/  location; void* control_url; void* scpd_url; void* upc; int /*<<< orphan*/  uuid; void* udn; void* serial_number; void* model_url; void* model_number; void* model_name; void* model_description; void* manufacturer_url; void* manufacturer; void* friendly_name; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 void* FUNC0 (void*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (void*,char*) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC5 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*) ; 
 char* FUNC7 (char const*) ; 
 void* FUNC8 (char const*,char*) ; 

__attribute__((used)) static void FUNC9(struct wps_er_ap *ap,
					    struct wpabuf *reply)
{
	/* Note: reply includes null termination after the buffer data */
	const char *tmp, *data = FUNC5(reply);
	char *pos;

	FUNC3(MSG_MSGDUMP, "WPS ER: Device info",
			  FUNC5(reply), FUNC6(reply));

	/*
	 * The root device description may include multiple devices, so first
	 * find the beginning of the WFADevice description to allow the
	 * simplistic parser to pick the correct entries.
	 */
	tmp = FUNC7(data);
	if (tmp == NULL) {
		FUNC4(MSG_DEBUG, "WPS ER: WFADevice:1 device not found - "
			   "trying to parse invalid data");
	} else
		data = tmp;

	ap->friendly_name = FUNC8(data, "friendlyName");
	FUNC4(MSG_DEBUG, "WPS ER: friendlyName='%s'", ap->friendly_name);

	ap->manufacturer = FUNC8(data, "manufacturer");
	FUNC4(MSG_DEBUG, "WPS ER: manufacturer='%s'", ap->manufacturer);

	ap->manufacturer_url = FUNC8(data, "manufacturerURL");
	FUNC4(MSG_DEBUG, "WPS ER: manufacturerURL='%s'",
		   ap->manufacturer_url);

	ap->model_description = FUNC8(data, "modelDescription");
	FUNC4(MSG_DEBUG, "WPS ER: modelDescription='%s'",
		   ap->model_description);

	ap->model_name = FUNC8(data, "modelName");
	FUNC4(MSG_DEBUG, "WPS ER: modelName='%s'", ap->model_name);

	ap->model_number = FUNC8(data, "modelNumber");
	FUNC4(MSG_DEBUG, "WPS ER: modelNumber='%s'", ap->model_number);

	ap->model_url = FUNC8(data, "modelURL");
	FUNC4(MSG_DEBUG, "WPS ER: modelURL='%s'", ap->model_url);

	ap->serial_number = FUNC8(data, "serialNumber");
	FUNC4(MSG_DEBUG, "WPS ER: serialNumber='%s'", ap->serial_number);

	ap->udn = FUNC8(data, "UDN");
	if (ap->udn) {
		FUNC4(MSG_DEBUG, "WPS ER: UDN='%s'", ap->udn);
		pos = FUNC1(ap->udn, "uuid:");
		if (pos) {
			pos += 5;
			if (FUNC2(pos, ap->uuid) < 0)
				FUNC4(MSG_DEBUG,
					   "WPS ER: Invalid UUID in UDN");
		}
	}

	ap->upc = FUNC8(data, "UPC");
	FUNC4(MSG_DEBUG, "WPS ER: UPC='%s'", ap->upc);

	ap->scpd_url = FUNC0(
		FUNC8(data, "SCPDURL"), ap->location);
	FUNC4(MSG_DEBUG, "WPS ER: SCPDURL='%s'", ap->scpd_url);

	ap->control_url = FUNC0(
		FUNC8(data, "controlURL"), ap->location);
	FUNC4(MSG_DEBUG, "WPS ER: controlURL='%s'", ap->control_url);

	ap->event_sub_url = FUNC0(
		FUNC8(data, "eventSubURL"), ap->location);
	FUNC4(MSG_DEBUG, "WPS ER: eventSubURL='%s'", ap->event_sub_url);
}