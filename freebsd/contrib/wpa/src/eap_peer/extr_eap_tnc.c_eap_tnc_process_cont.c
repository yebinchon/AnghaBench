
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_tnc_data {int in_buf; int state; } ;


 int FAIL ;
 int MSG_DEBUG ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_put_data (int ,int const*,size_t) ;
 size_t wpabuf_tailroom (int ) ;

__attribute__((used)) static int eap_tnc_process_cont(struct eap_tnc_data *data,
    const u8 *buf, size_t len)
{

 if (len > wpabuf_tailroom(data->in_buf)) {
  wpa_printf(MSG_DEBUG, "EAP-TNC: Fragment overflow");
  data->state = FAIL;
  return -1;
 }

 wpabuf_put_data(data->in_buf, buf, len);
 wpa_printf(MSG_DEBUG, "EAP-TNC: Received %lu bytes, waiting for "
     "%lu bytes more", (unsigned long) len,
     (unsigned long) wpabuf_tailroom(data->in_buf));

 return 0;
}
