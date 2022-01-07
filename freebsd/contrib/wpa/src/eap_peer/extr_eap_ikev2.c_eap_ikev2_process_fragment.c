
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wpabuf {int dummy; } ;
struct eap_method_ret {void* ignore; } ;
struct eap_ikev2_data {int * in_buf; } ;


 int EAP_CODE_RESPONSE ;
 void* FALSE ;
 int IKEV2_FLAGS_LENGTH_INCLUDED ;
 int MSG_DEBUG ;
 void* TRUE ;
 struct wpabuf* eap_ikev2_build_frag_ack (int,int ) ;
 int wpa_printf (int ,char*,...) ;
 int * wpabuf_alloc (int) ;
 int wpabuf_put_data (int *,int const*,size_t) ;
 scalar_t__ wpabuf_tailroom (int *) ;

__attribute__((used)) static struct wpabuf * eap_ikev2_process_fragment(struct eap_ikev2_data *data,
        struct eap_method_ret *ret,
        u8 id, u8 flags,
        u32 message_length,
        const u8 *buf, size_t len)
{

 if (data->in_buf == ((void*)0) && !(flags & IKEV2_FLAGS_LENGTH_INCLUDED)) {
  wpa_printf(MSG_DEBUG, "EAP-IKEV2: No Message Length field in "
      "a fragmented packet");
  ret->ignore = TRUE;
  return ((void*)0);
 }

 if (data->in_buf == ((void*)0)) {

  if (message_length > 50000) {

   wpa_printf(MSG_DEBUG,
       "EAP-IKEV2: Ignore too long message");
   ret->ignore = TRUE;
   return ((void*)0);
  }
  data->in_buf = wpabuf_alloc(message_length);
  if (data->in_buf == ((void*)0)) {
   wpa_printf(MSG_DEBUG, "EAP-IKEV2: No memory for "
       "message");
   ret->ignore = TRUE;
   return ((void*)0);
  }
  wpabuf_put_data(data->in_buf, buf, len);
  wpa_printf(MSG_DEBUG, "EAP-IKEV2: Received %lu bytes in first "
      "fragment, waiting for %lu bytes more",
      (unsigned long) len,
      (unsigned long) wpabuf_tailroom(data->in_buf));
 }

 ret->ignore = FALSE;
 return eap_ikev2_build_frag_ack(id, EAP_CODE_RESPONSE);
}
