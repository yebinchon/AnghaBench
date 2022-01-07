
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct tlsv1_server {size_t dh_secret_len; int * dh_secret; TYPE_1__* cred; } ;
struct TYPE_2__ {int * dh_p; } ;


 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 int TLS_ALERT_DECODE_ERROR ;
 int TLS_ALERT_INTERNAL_ERROR ;
 int TLS_ALERT_LEVEL_FATAL ;
 int WPA_GET_BE16 (int const*) ;
 scalar_t__ crypto_mod_exp (int const*,int,int *,size_t,int const*,size_t,int *,size_t*) ;
 int os_free (int *) ;
 int * os_malloc (size_t) ;
 int os_memset (int *,int ,size_t) ;
 int tlsv1_server_alert (struct tlsv1_server*,int ,int ) ;
 int tlsv1_server_derive_keys (struct tlsv1_server*,int *,size_t) ;
 int tlsv1_server_get_dh_p (struct tlsv1_server*,int const**,size_t*) ;
 int tlsv1_server_log (struct tlsv1_server*,char*,...) ;
 int wpa_hexdump (int ,char*,int const*,int) ;
 int wpa_hexdump_key (int ,char*,int *,size_t) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int tls_process_client_key_exchange_dh(
 struct tlsv1_server *conn, const u8 *pos, const u8 *end)
{
 const u8 *dh_yc;
 u16 dh_yc_len;
 u8 *shared;
 size_t shared_len;
 int res;
 const u8 *dh_p;
 size_t dh_p_len;
 tlsv1_server_log(conn, "ClientDiffieHellmanPublic received");
 wpa_hexdump(MSG_MSGDUMP, "TLSv1: ClientDiffieHellmanPublic",
      pos, end - pos);

 if (end == pos) {
  wpa_printf(MSG_DEBUG, "TLSv1: Implicit public value encoding "
      "not supported");
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_INTERNAL_ERROR);
  return -1;
 }

 if (end - pos < 3) {
  tlsv1_server_log(conn, "Invalid client public value length");
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_DECODE_ERROR);
  return -1;
 }

 dh_yc_len = WPA_GET_BE16(pos);
 dh_yc = pos + 2;

 if (dh_yc_len > end - dh_yc) {
  tlsv1_server_log(conn, "Client public value overflow (length %d)",
     dh_yc_len);
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_DECODE_ERROR);
  return -1;
 }

 wpa_hexdump(MSG_DEBUG, "TLSv1: DH Yc (client's public value)",
      dh_yc, dh_yc_len);

 if (conn->cred == ((void*)0) || conn->cred->dh_p == ((void*)0) ||
     conn->dh_secret == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "TLSv1: No DH parameters available");
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_INTERNAL_ERROR);
  return -1;
 }

 tlsv1_server_get_dh_p(conn, &dh_p, &dh_p_len);

 shared_len = dh_p_len;
 shared = os_malloc(shared_len);
 if (shared == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "TLSv1: Could not allocate memory for "
      "DH");
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_INTERNAL_ERROR);
  return -1;
 }


 if (crypto_mod_exp(dh_yc, dh_yc_len, conn->dh_secret,
      conn->dh_secret_len, dh_p, dh_p_len,
      shared, &shared_len)) {
  os_free(shared);
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_INTERNAL_ERROR);
  return -1;
 }
 wpa_hexdump_key(MSG_DEBUG, "TLSv1: Shared secret from DH key exchange",
   shared, shared_len);

 os_memset(conn->dh_secret, 0, conn->dh_secret_len);
 os_free(conn->dh_secret);
 conn->dh_secret = ((void*)0);

 res = tlsv1_server_derive_keys(conn, shared, shared_len);


 os_memset(shared, 0, shared_len);
 os_free(shared);

 if (res) {
  wpa_printf(MSG_DEBUG, "TLSv1: Failed to derive keys");
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_INTERNAL_ERROR);
  return -1;
 }

 return 0;
}
