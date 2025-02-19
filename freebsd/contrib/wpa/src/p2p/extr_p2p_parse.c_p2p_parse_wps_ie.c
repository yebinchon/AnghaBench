
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_parse_attr {int dev_name_len; int oob_dev_password_len; int oob_dev_password; int serial_number_len; int serial_number; int model_number_len; int model_number; int model_name_len; int model_name; int manufacturer_len; int manufacturer; int * vendor_ext_len; int * vendor_ext; int sec_dev_type_list_len; scalar_t__ sec_dev_type_list; scalar_t__ primary_dev_type; scalar_t__ dev_password_id; scalar_t__ config_methods; scalar_t__ dev_name; } ;
struct wpabuf {int dummy; } ;
struct p2p_message {int dev_password_id_present; int oob_dev_password_len; int oob_dev_password; int serial_number_len; int serial_number; int model_number_len; int model_number; int model_name_len; int model_name; int manufacturer_len; int manufacturer; int * wps_vendor_ext_len; int * wps_vendor_ext; int wps_sec_dev_type_list_len; scalar_t__ wps_sec_dev_type_list; scalar_t__ wps_pri_dev_type; void* dev_password_id; void* wps_config_methods; int * device_name; } ;
typedef int devtype ;


 int MSG_DEBUG ;
 int P2P_MAX_WPS_VENDOR_EXT ;
 void* WPA_GET_BE16 (scalar_t__) ;
 int WPS_DEV_TYPE_BUFSIZE ;
 int os_memcpy (int *,scalar_t__,int) ;
 int wpa_printf (int ,char*,...) ;
 void* wps_dev_type_bin2str (scalar_t__,char*,int) ;
 scalar_t__ wps_parse_msg (struct wpabuf const*,struct wps_parse_attr*) ;

__attribute__((used)) static int p2p_parse_wps_ie(const struct wpabuf *buf, struct p2p_message *msg)
{
 struct wps_parse_attr attr;
 int i;

 wpa_printf(MSG_DEBUG, "P2P: Parsing WPS IE");
 if (wps_parse_msg(buf, &attr))
  return -1;
 if (attr.dev_name && attr.dev_name_len < sizeof(msg->device_name) &&
     !msg->device_name[0])
  os_memcpy(msg->device_name, attr.dev_name, attr.dev_name_len);
 if (attr.config_methods) {
  msg->wps_config_methods =
   WPA_GET_BE16(attr.config_methods);
  wpa_printf(MSG_DEBUG, "P2P: Config Methods (WPS): 0x%x",
      msg->wps_config_methods);
 }
 if (attr.dev_password_id) {
  msg->dev_password_id = WPA_GET_BE16(attr.dev_password_id);
  wpa_printf(MSG_DEBUG, "P2P: Device Password ID: %d",
      msg->dev_password_id);
  msg->dev_password_id_present = 1;
 }
 if (attr.primary_dev_type) {
  char devtype[WPS_DEV_TYPE_BUFSIZE];
  msg->wps_pri_dev_type = attr.primary_dev_type;
  wpa_printf(MSG_DEBUG, "P2P: Primary Device Type (WPS): %s",
      wps_dev_type_bin2str(msg->wps_pri_dev_type, devtype,
      sizeof(devtype)));
 }
 if (attr.sec_dev_type_list) {
  msg->wps_sec_dev_type_list = attr.sec_dev_type_list;
  msg->wps_sec_dev_type_list_len = attr.sec_dev_type_list_len;
 }

 for (i = 0; i < P2P_MAX_WPS_VENDOR_EXT; i++) {
  msg->wps_vendor_ext[i] = attr.vendor_ext[i];
  msg->wps_vendor_ext_len[i] = attr.vendor_ext_len[i];
 }

 msg->manufacturer = attr.manufacturer;
 msg->manufacturer_len = attr.manufacturer_len;
 msg->model_name = attr.model_name;
 msg->model_name_len = attr.model_name_len;
 msg->model_number = attr.model_number;
 msg->model_number_len = attr.model_number_len;
 msg->serial_number = attr.serial_number;
 msg->serial_number_len = attr.serial_number_len;

 msg->oob_dev_password = attr.oob_dev_password;
 msg->oob_dev_password_len = attr.oob_dev_password_len;

 return 0;
}
