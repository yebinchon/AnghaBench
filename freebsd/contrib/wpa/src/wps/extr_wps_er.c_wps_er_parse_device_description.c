
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_er_ap {void* event_sub_url; int location; void* control_url; void* scpd_url; void* upc; int uuid; void* udn; void* serial_number; void* model_url; void* model_number; void* model_name; void* model_description; void* manufacturer_url; void* manufacturer; void* friendly_name; } ;
struct wpabuf {int dummy; } ;


 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 void* http_link_update (void*,int ) ;
 char* os_strstr (void*,char*) ;
 scalar_t__ uuid_str2bin (char*,int ) ;
 int wpa_hexdump_ascii (int ,char*,char*,int ) ;
 int wpa_printf (int ,char*,...) ;
 char* wpabuf_head (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 char* wps_er_find_wfadevice (char const*) ;
 void* xml_get_first_item (char const*,char*) ;

__attribute__((used)) static void wps_er_parse_device_description(struct wps_er_ap *ap,
         struct wpabuf *reply)
{

 const char *tmp, *data = wpabuf_head(reply);
 char *pos;

 wpa_hexdump_ascii(MSG_MSGDUMP, "WPS ER: Device info",
     wpabuf_head(reply), wpabuf_len(reply));






 tmp = wps_er_find_wfadevice(data);
 if (tmp == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS ER: WFADevice:1 device not found - "
      "trying to parse invalid data");
 } else
  data = tmp;

 ap->friendly_name = xml_get_first_item(data, "friendlyName");
 wpa_printf(MSG_DEBUG, "WPS ER: friendlyName='%s'", ap->friendly_name);

 ap->manufacturer = xml_get_first_item(data, "manufacturer");
 wpa_printf(MSG_DEBUG, "WPS ER: manufacturer='%s'", ap->manufacturer);

 ap->manufacturer_url = xml_get_first_item(data, "manufacturerURL");
 wpa_printf(MSG_DEBUG, "WPS ER: manufacturerURL='%s'",
     ap->manufacturer_url);

 ap->model_description = xml_get_first_item(data, "modelDescription");
 wpa_printf(MSG_DEBUG, "WPS ER: modelDescription='%s'",
     ap->model_description);

 ap->model_name = xml_get_first_item(data, "modelName");
 wpa_printf(MSG_DEBUG, "WPS ER: modelName='%s'", ap->model_name);

 ap->model_number = xml_get_first_item(data, "modelNumber");
 wpa_printf(MSG_DEBUG, "WPS ER: modelNumber='%s'", ap->model_number);

 ap->model_url = xml_get_first_item(data, "modelURL");
 wpa_printf(MSG_DEBUG, "WPS ER: modelURL='%s'", ap->model_url);

 ap->serial_number = xml_get_first_item(data, "serialNumber");
 wpa_printf(MSG_DEBUG, "WPS ER: serialNumber='%s'", ap->serial_number);

 ap->udn = xml_get_first_item(data, "UDN");
 if (ap->udn) {
  wpa_printf(MSG_DEBUG, "WPS ER: UDN='%s'", ap->udn);
  pos = os_strstr(ap->udn, "uuid:");
  if (pos) {
   pos += 5;
   if (uuid_str2bin(pos, ap->uuid) < 0)
    wpa_printf(MSG_DEBUG,
        "WPS ER: Invalid UUID in UDN");
  }
 }

 ap->upc = xml_get_first_item(data, "UPC");
 wpa_printf(MSG_DEBUG, "WPS ER: UPC='%s'", ap->upc);

 ap->scpd_url = http_link_update(
  xml_get_first_item(data, "SCPDURL"), ap->location);
 wpa_printf(MSG_DEBUG, "WPS ER: SCPDURL='%s'", ap->scpd_url);

 ap->control_url = http_link_update(
  xml_get_first_item(data, "controlURL"), ap->location);
 wpa_printf(MSG_DEBUG, "WPS ER: controlURL='%s'", ap->control_url);

 ap->event_sub_url = http_link_update(
  xml_get_first_item(data, "eventSubURL"), ap->location);
 wpa_printf(MSG_DEBUG, "WPS ER: eventSubURL='%s'", ap->event_sub_url);
}
