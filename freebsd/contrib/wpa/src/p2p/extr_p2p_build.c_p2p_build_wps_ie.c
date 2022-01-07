
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct p2p_data {int ** wps_vendor_ext; TYPE_1__* cfg; } ;
struct TYPE_2__ {int config_methods; int num_sec_dev_types; int sec_dev_type; int dev_name; int pri_dev_type; int serial_number; int model_number; int model_name; int manufacturer; int uuid; } ;


 int ATTR_CONFIG_METHODS ;
 int ATTR_DEV_NAME ;
 int ATTR_DEV_PASSWORD_ID ;
 int ATTR_MANUFACTURER ;
 int ATTR_MODEL_NAME ;
 int ATTR_MODEL_NUMBER ;
 int ATTR_PRIMARY_DEV_TYPE ;
 int ATTR_RESPONSE_TYPE ;
 int ATTR_SECONDARY_DEV_TYPE_LIST ;
 int ATTR_SERIAL_NUMBER ;
 int ATTR_VENDOR_EXT ;
 int ATTR_WPS_STATE ;
 int MSG_DEBUG ;
 int P2P_MAX_WPS_VENDOR_EXT ;
 int WLAN_EID_VENDOR_SPECIFIC ;
 int WPS_DEV_OUI_WFA ;
 int WPS_DEV_TYPE_LEN ;
 int WPS_RESP_ENROLLEE_INFO ;
 int WPS_STATE_NOT_CONFIGURED ;
 scalar_t__ p2p_add_wps_string (struct wpabuf*,int ,int ) ;
 int p2p_buf_update_ie_hdr (struct wpabuf*,int *) ;
 int wpa_printf (int ,char*,int) ;
 int wpabuf_len (int *) ;
 int * wpabuf_put (struct wpabuf*,int) ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;
 int wpabuf_put_be32 (struct wpabuf*,int ) ;
 int wpabuf_put_buf (struct wpabuf*,int *) ;
 int wpabuf_put_data (struct wpabuf*,int ,int) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;
 int wpabuf_tailroom (struct wpabuf*) ;
 scalar_t__ wps_build_uuid_e (struct wpabuf*,int ) ;
 scalar_t__ wps_build_version (struct wpabuf*) ;
 scalar_t__ wps_build_wfa_ext (struct wpabuf*,int ,int *,int ,int ) ;

int p2p_build_wps_ie(struct p2p_data *p2p, struct wpabuf *buf, int pw_id,
       int all_attr)
{
 u8 *len;
 int i;

 if (wpabuf_tailroom(buf) < 6)
  return -1;
 wpabuf_put_u8(buf, WLAN_EID_VENDOR_SPECIFIC);
 len = wpabuf_put(buf, 1);
 wpabuf_put_be32(buf, WPS_DEV_OUI_WFA);

 if (wps_build_version(buf) < 0)
  return -1;

 if (all_attr) {
  if (wpabuf_tailroom(buf) < 5)
   return -1;
  wpabuf_put_be16(buf, ATTR_WPS_STATE);
  wpabuf_put_be16(buf, 1);
  wpabuf_put_u8(buf, WPS_STATE_NOT_CONFIGURED);
 }

 if (pw_id >= 0) {
  if (wpabuf_tailroom(buf) < 6)
   return -1;

  wpabuf_put_be16(buf, ATTR_DEV_PASSWORD_ID);
  wpabuf_put_be16(buf, 2);
  wpa_printf(MSG_DEBUG, "P2P: WPS IE Device Password ID: %d",
      pw_id);
  wpabuf_put_be16(buf, pw_id);
 }

 if (all_attr) {
  if (wpabuf_tailroom(buf) < 5)
   return -1;
  wpabuf_put_be16(buf, ATTR_RESPONSE_TYPE);
  wpabuf_put_be16(buf, 1);
  wpabuf_put_u8(buf, WPS_RESP_ENROLLEE_INFO);

  if (wps_build_uuid_e(buf, p2p->cfg->uuid) < 0 ||
      p2p_add_wps_string(buf, ATTR_MANUFACTURER,
           p2p->cfg->manufacturer) < 0 ||
      p2p_add_wps_string(buf, ATTR_MODEL_NAME,
           p2p->cfg->model_name) < 0 ||
      p2p_add_wps_string(buf, ATTR_MODEL_NUMBER,
           p2p->cfg->model_number) < 0 ||
      p2p_add_wps_string(buf, ATTR_SERIAL_NUMBER,
           p2p->cfg->serial_number) < 0)
   return -1;

  if (wpabuf_tailroom(buf) < 4 + WPS_DEV_TYPE_LEN)
   return -1;
  wpabuf_put_be16(buf, ATTR_PRIMARY_DEV_TYPE);
  wpabuf_put_be16(buf, WPS_DEV_TYPE_LEN);
  wpabuf_put_data(buf, p2p->cfg->pri_dev_type, WPS_DEV_TYPE_LEN);

  if (p2p_add_wps_string(buf, ATTR_DEV_NAME, p2p->cfg->dev_name)
      < 0)
   return -1;

  if (wpabuf_tailroom(buf) < 6)
   return -1;
  wpabuf_put_be16(buf, ATTR_CONFIG_METHODS);
  wpabuf_put_be16(buf, 2);
  wpabuf_put_be16(buf, p2p->cfg->config_methods);
 }

 if (wps_build_wfa_ext(buf, 0, ((void*)0), 0, 0) < 0)
  return -1;

 if (all_attr && p2p->cfg->num_sec_dev_types) {
  if (wpabuf_tailroom(buf) <
      4 + WPS_DEV_TYPE_LEN * p2p->cfg->num_sec_dev_types)
   return -1;
  wpabuf_put_be16(buf, ATTR_SECONDARY_DEV_TYPE_LIST);
  wpabuf_put_be16(buf, WPS_DEV_TYPE_LEN *
    p2p->cfg->num_sec_dev_types);
  wpabuf_put_data(buf, p2p->cfg->sec_dev_type,
    WPS_DEV_TYPE_LEN *
    p2p->cfg->num_sec_dev_types);
 }


 for (i = 0; i < P2P_MAX_WPS_VENDOR_EXT; i++) {
  if (p2p->wps_vendor_ext[i] == ((void*)0))
   break;
  if (wpabuf_tailroom(buf) <
      4 + wpabuf_len(p2p->wps_vendor_ext[i]))
   continue;
  wpabuf_put_be16(buf, ATTR_VENDOR_EXT);
  wpabuf_put_be16(buf, wpabuf_len(p2p->wps_vendor_ext[i]));
  wpabuf_put_buf(buf, p2p->wps_vendor_ext[i]);
 }

 p2p_buf_update_ie_hdr(buf, len);

 return 0;
}
