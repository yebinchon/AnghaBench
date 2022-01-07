
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_ssl_data {int tls_v13; struct wpabuf const* tls_out; int conn; int ssl_ctx; } ;
struct eap_sm {int dummy; } ;
typedef int buf ;
typedef int EapType ;


 int MSG_DEBUG ;
 int eap_peer_tls_reset_output (struct eap_ssl_data*) ;
 int eap_tls_process_input (struct eap_sm*,struct eap_ssl_data*,struct wpabuf const*,struct wpabuf**) ;
 int eap_tls_process_output (struct eap_ssl_data*,int ,int,int ,int,struct wpabuf**) ;
 scalar_t__ os_strcmp (char*,char*) ;
 scalar_t__ tls_connection_get_failed (int ,int ) ;
 scalar_t__ tls_get_version (int ,int ,char*,int) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_free (struct wpabuf const*) ;
 scalar_t__ wpabuf_len (struct wpabuf const*) ;

int eap_peer_tls_process_helper(struct eap_sm *sm, struct eap_ssl_data *data,
    EapType eap_type, int peap_version,
    u8 id, const struct wpabuf *in_data,
    struct wpabuf **out_data)
{
 int ret = 0;

 *out_data = ((void*)0);

 if (data->tls_out && wpabuf_len(data->tls_out) > 0 &&
     wpabuf_len(in_data) > 0) {
  wpa_printf(MSG_DEBUG, "SSL: Received non-ACK when output "
      "fragments are waiting to be sent out");
  return -1;
 }

 if (data->tls_out == ((void*)0) || wpabuf_len(data->tls_out) == 0) {




  int res = eap_tls_process_input(sm, data, in_data, out_data);
  char buf[20];

  if (res) {




   return res;
  }






  if (tls_get_version(data->ssl_ctx, data->conn,
        buf, sizeof(buf)) == 0) {
   wpa_printf(MSG_DEBUG, "SSL: Using TLS version %s", buf);
   data->tls_v13 = os_strcmp(buf, "TLSv1.3") == 0;
  }
 }

 if (data->tls_out == ((void*)0)) {





  eap_peer_tls_reset_output(data);
  return -1;
 }

 if (tls_connection_get_failed(data->ssl_ctx, data->conn)) {

  wpa_printf(MSG_DEBUG, "SSL: Failed - tls_out available to "
      "report error (len=%u)",
      (unsigned int) wpabuf_len(data->tls_out));
  ret = -1;

  if (wpabuf_len(data->tls_out) == 0) {
   wpabuf_free(data->tls_out);
   data->tls_out = ((void*)0);
   return -1;
  }
 }

 if (wpabuf_len(data->tls_out) == 0) {





  wpa_printf(MSG_DEBUG, "SSL: No data to be sent out");
  wpabuf_free(data->tls_out);
  data->tls_out = ((void*)0);
  return 1;
 }


 return eap_tls_process_output(data, eap_type, peap_version, id, ret,
          out_data);
}
