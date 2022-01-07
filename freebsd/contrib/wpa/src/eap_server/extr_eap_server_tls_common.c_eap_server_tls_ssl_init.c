
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct eap_ssl_data {int tls_out_limit; scalar_t__ phase2; int * conn; struct eap_sm* eap; } ;
struct eap_sm {unsigned int tls_flags; scalar_t__ fragment_size; int * ssl_ctx; int tls_test_flags; scalar_t__ init_phase2; } ;
typedef int session_ctx ;


 int EAP_TYPE_FAST ;
 int MSG_ERROR ;
 int MSG_INFO ;
 unsigned int TLS_CONN_DISABLE_SESSION_TICKET ;
 int eap_server_tls_log_cb ;
 int os_memcpy (scalar_t__*,char*,int) ;
 int tls_connection_deinit (int *,int *) ;
 int * tls_connection_init (int *) ;
 int tls_connection_set_log_cb (int *,int ,struct eap_sm*) ;
 int tls_connection_set_test_flags (int *,int ) ;
 scalar_t__ tls_connection_set_verify (int *,int *,int,unsigned int,scalar_t__*,int) ;
 int wpa_printf (int ,char*) ;

int eap_server_tls_ssl_init(struct eap_sm *sm, struct eap_ssl_data *data,
       int verify_peer, int eap_type)
{
 u8 session_ctx[8];
 unsigned int flags = sm->tls_flags;

 if (sm->ssl_ctx == ((void*)0)) {
  wpa_printf(MSG_ERROR, "TLS context not initialized - cannot use TLS-based EAP method");
  return -1;
 }

 data->eap = sm;
 data->phase2 = sm->init_phase2;

 data->conn = tls_connection_init(sm->ssl_ctx);
 if (data->conn == ((void*)0)) {
  wpa_printf(MSG_INFO, "SSL: Failed to initialize new TLS "
      "connection");
  return -1;
 }
 if (eap_type != EAP_TYPE_FAST)
  flags |= TLS_CONN_DISABLE_SESSION_TICKET;
 os_memcpy(session_ctx, "hostapd", 7);
 session_ctx[7] = (u8) eap_type;
 if (tls_connection_set_verify(sm->ssl_ctx, data->conn, verify_peer,
          flags, session_ctx,
          sizeof(session_ctx))) {
  wpa_printf(MSG_INFO, "SSL: Failed to configure verification "
      "of TLS peer certificate");
  tls_connection_deinit(sm->ssl_ctx, data->conn);
  data->conn = ((void*)0);
  return -1;
 }

 data->tls_out_limit = sm->fragment_size > 0 ? sm->fragment_size : 1398;
 if (data->phase2) {



  if (data->tls_out_limit > 100)
   data->tls_out_limit -= 100;
 }
 return 0;
}
