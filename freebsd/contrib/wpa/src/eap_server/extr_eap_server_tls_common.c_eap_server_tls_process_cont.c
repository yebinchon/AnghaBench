
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_ssl_data {int tls_in; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_put_data (int ,int const*,size_t) ;
 size_t wpabuf_tailroom (int ) ;

__attribute__((used)) static int eap_server_tls_process_cont(struct eap_ssl_data *data,
           const u8 *buf, size_t len)
{

 if (len > wpabuf_tailroom(data->tls_in)) {
  wpa_printf(MSG_DEBUG, "SSL: Fragment overflow");
  return -1;
 }

 wpabuf_put_data(data->tls_in, buf, len);
 wpa_printf(MSG_DEBUG, "SSL: Received %lu bytes, waiting for %lu "
     "bytes more", (unsigned long) len,
     (unsigned long) wpabuf_tailroom(data->tls_in));

 return 0;
}
