
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct eap_wsc_data {int in_op_code; int * in_buf; } ;


 int MSG_DEBUG ;
 int WSC_FLAGS_LF ;
 int wpa_printf (int ,char*,...) ;
 int * wpabuf_alloc (int ) ;
 int wpabuf_put_data (int *,int const*,size_t) ;
 scalar_t__ wpabuf_tailroom (int *) ;

__attribute__((used)) static int eap_wsc_process_fragment(struct eap_wsc_data *data,
        u8 flags, u8 op_code, u16 message_length,
        const u8 *buf, size_t len)
{

 if (data->in_buf == ((void*)0) && !(flags & WSC_FLAGS_LF)) {
  wpa_printf(MSG_DEBUG, "EAP-WSC: No Message Length "
      "field in a fragmented packet");
  return -1;
 }

 if (data->in_buf == ((void*)0)) {

  data->in_buf = wpabuf_alloc(message_length);
  if (data->in_buf == ((void*)0)) {
   wpa_printf(MSG_DEBUG, "EAP-WSC: No memory for "
       "message");
   return -1;
  }
  data->in_op_code = op_code;
  wpabuf_put_data(data->in_buf, buf, len);
  wpa_printf(MSG_DEBUG, "EAP-WSC: Received %lu bytes in "
      "first fragment, waiting for %lu bytes more",
      (unsigned long) len,
      (unsigned long) wpabuf_tailroom(data->in_buf));
 }

 return 0;
}
