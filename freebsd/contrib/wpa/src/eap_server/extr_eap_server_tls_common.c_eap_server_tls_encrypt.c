
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct eap_ssl_data {int conn; } ;
struct eap_sm {int ssl_ctx; } ;


 int MSG_INFO ;
 struct wpabuf* tls_connection_encrypt (int ,int ,struct wpabuf const*) ;
 int wpa_printf (int ,char*) ;

struct wpabuf * eap_server_tls_encrypt(struct eap_sm *sm,
           struct eap_ssl_data *data,
           const struct wpabuf *plain)
{
 struct wpabuf *buf;

 buf = tls_connection_encrypt(sm->ssl_ctx, data->conn,
         plain);
 if (buf == ((void*)0)) {
  wpa_printf(MSG_INFO, "SSL: Failed to encrypt Phase 2 data");
  return ((void*)0);
 }

 return buf;
}
