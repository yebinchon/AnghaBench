
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct eap_ssl_data {int * tls_in; } ;


 int EAP_TLS_FLAGS_LENGTH_INCLUDED ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int wpa_printf (int ,char*,...) ;
 int * wpabuf_alloc (int) ;
 int wpabuf_put_data (int *,int const*,size_t) ;
 scalar_t__ wpabuf_tailroom (int *) ;

__attribute__((used)) static int eap_server_tls_process_fragment(struct eap_ssl_data *data,
        u8 flags, u32 message_length,
        const u8 *buf, size_t len)
{

 if (data->tls_in == ((void*)0) && !(flags & EAP_TLS_FLAGS_LENGTH_INCLUDED)) {
  wpa_printf(MSG_DEBUG, "SSL: No Message Length field in a "
      "fragmented packet");
  return -1;
 }

 if (data->tls_in == ((void*)0)) {




  if (message_length > 65536) {
   wpa_printf(MSG_INFO, "SSL: Too long TLS fragment (size"
       " over 64 kB)");
   return -1;
  }

  if (len > message_length) {
   wpa_printf(MSG_INFO, "SSL: Too much data (%d bytes) in "
       "first fragment of frame (TLS Message "
       "Length %d bytes)",
       (int) len, (int) message_length);
   return -1;
  }

  data->tls_in = wpabuf_alloc(message_length);
  if (data->tls_in == ((void*)0)) {
   wpa_printf(MSG_DEBUG, "SSL: No memory for message");
   return -1;
  }
  wpabuf_put_data(data->tls_in, buf, len);
  wpa_printf(MSG_DEBUG, "SSL: Received %lu bytes in first "
      "fragment, waiting for %lu bytes more",
      (unsigned long) len,
      (unsigned long) wpabuf_tailroom(data->tls_in));
 }

 return 0;
}
