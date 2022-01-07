
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct eap_wsc_data {scalar_t__ in_op_code; int in_buf; } ;


 int FAIL ;
 int MSG_DEBUG ;
 int eap_wsc_state (struct eap_wsc_data*,int ) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_put_data (int ,scalar_t__ const*,size_t) ;
 size_t wpabuf_tailroom (int ) ;

__attribute__((used)) static int eap_wsc_process_cont(struct eap_wsc_data *data,
    const u8 *buf, size_t len, u8 op_code)
{

 if (op_code != data->in_op_code) {
  wpa_printf(MSG_DEBUG, "EAP-WSC: Unexpected Op-Code %d in "
      "fragment (expected %d)",
      op_code, data->in_op_code);
  eap_wsc_state(data, FAIL);
  return -1;
 }

 if (len > wpabuf_tailroom(data->in_buf)) {
  wpa_printf(MSG_DEBUG, "EAP-WSC: Fragment overflow");
  eap_wsc_state(data, FAIL);
  return -1;
 }

 wpabuf_put_data(data->in_buf, buf, len);
 wpa_printf(MSG_DEBUG, "EAP-WSC: Received %lu bytes, waiting for %lu "
     "bytes more", (unsigned long) len,
     (unsigned long) wpabuf_tailroom(data->in_buf));

 return 0;
}
