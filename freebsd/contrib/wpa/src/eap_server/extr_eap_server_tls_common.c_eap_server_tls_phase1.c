
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_ssl_data {int tls_v13; int conn; int * tls_out; int tls_in; } ;
struct eap_sm {int ssl_ctx; scalar_t__ serial_num; } ;
typedef int buf ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int WPA_ASSERT (int ) ;
 scalar_t__ os_strcmp (char*,char*) ;
 scalar_t__ tls_connection_established (int ,int ) ;
 scalar_t__ tls_connection_get_failed (int ,int ) ;
 scalar_t__ tls_connection_peer_serial_num (int ,int ) ;
 int * tls_connection_server_handshake (int ,int ,int ,int *) ;
 scalar_t__ tls_get_version (int ,int ,char*,int) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_free (int *) ;

int eap_server_tls_phase1(struct eap_sm *sm, struct eap_ssl_data *data)
{
 char buf[20];

 if (data->tls_out) {

  wpa_printf(MSG_INFO, "SSL: pending tls_out data when "
      "processing new message");
  wpabuf_free(data->tls_out);
  WPA_ASSERT(data->tls_out == ((void*)0));
 }

 data->tls_out = tls_connection_server_handshake(sm->ssl_ctx,
       data->conn,
       data->tls_in, ((void*)0));
 if (data->tls_out == ((void*)0)) {
  wpa_printf(MSG_INFO, "SSL: TLS processing failed");
  return -1;
 }
 if (tls_connection_get_failed(sm->ssl_ctx, data->conn)) {

  wpa_printf(MSG_DEBUG, "SSL: Failed - tls_out available to "
      "report error");
  return -1;
 }

 if (tls_get_version(sm->ssl_ctx, data->conn, buf, sizeof(buf)) == 0) {
  wpa_printf(MSG_DEBUG, "SSL: Using TLS version %s", buf);
  data->tls_v13 = os_strcmp(buf, "TLSv1.3") == 0;
 }

 if (!sm->serial_num &&
     tls_connection_established(sm->ssl_ctx, data->conn))
  sm->serial_num = tls_connection_peer_serial_num(sm->ssl_ctx,
        data->conn);

 return 0;
}
