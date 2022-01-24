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
typedef  int /*<<< orphan*/  uuid_string ;
struct wpabuf {int dummy; } ;
struct upnp_wps_device_sm {int dummy; } ;
struct upnp_wps_device_interface {TYPE_2__* wps; } ;
struct TYPE_3__ {char* manufacturer; char* model_name; char const* model_number; char const* serial_number; } ;
struct TYPE_4__ {char* friendly_name; char const* manufacturer_url; char const* model_description; char const* model_url; char const* upc; int /*<<< orphan*/  uuid; TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,char*) ; 
 char* wps_device_xml_postfix ; 
 char* wps_device_xml_prefix ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct upnp_wps_device_interface *iface,
				  struct upnp_wps_device_sm *sm,
				  struct wpabuf *buf)
{
	const char *s;
	char uuid_string[80];

	FUNC2(buf, wps_device_xml_prefix);

	/*
	 * Add required fields with default values if not configured. Add
	 * optional and recommended fields only if configured.
	 */
	s = iface->wps->friendly_name;
	s = ((s && *s) ? s : "WPS Access Point");
	FUNC3(buf, "friendlyName", s);

	s = iface->wps->dev.manufacturer;
	s = ((s && *s) ? s : "");
	FUNC3(buf, "manufacturer", s);

	if (iface->wps->manufacturer_url)
		FUNC3(buf, "manufacturerURL",
				    iface->wps->manufacturer_url);

	if (iface->wps->model_description)
		FUNC3(buf, "modelDescription",
				    iface->wps->model_description);

	s = iface->wps->dev.model_name;
	s = ((s && *s) ? s : "");
	FUNC3(buf, "modelName", s);

	if (iface->wps->dev.model_number)
		FUNC3(buf, "modelNumber",
				    iface->wps->dev.model_number);

	if (iface->wps->model_url)
		FUNC3(buf, "modelURL", iface->wps->model_url);

	if (iface->wps->dev.serial_number)
		FUNC3(buf, "serialNumber",
				    iface->wps->dev.serial_number);

	FUNC1(iface->wps->uuid, uuid_string, sizeof(uuid_string));
	s = uuid_string;
	/* Need "uuid:" prefix, thus we can't use xml_add_tagged_data()
	 * easily...
	 */
	FUNC2(buf, "<UDN>uuid:");
	FUNC4(buf, s, FUNC0(s));
	FUNC2(buf, "</UDN>\n");

	if (iface->wps->upc)
		FUNC3(buf, "UPC", iface->wps->upc);

	FUNC2(buf, wps_device_xml_postfix);
}