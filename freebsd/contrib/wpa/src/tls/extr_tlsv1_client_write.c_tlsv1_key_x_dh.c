
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct tlsv1_client {size_t dh_p_len; int dh_p; int dh_ys_len; int dh_ys; int dh_g_len; int dh_g; } ;


 int MSG_DEBUG ;
 int TLS_ALERT_INTERNAL_ERROR ;
 int TLS_ALERT_LEVEL_FATAL ;
 int WPA_PUT_BE16 (scalar_t__*,size_t) ;
 scalar_t__ crypto_mod_exp (int ,int ,scalar_t__*,size_t,int ,size_t,scalar_t__*,size_t*) ;
 int os_free (scalar_t__*) ;
 scalar_t__* os_malloc (size_t) ;
 scalar_t__ os_memcmp (scalar_t__*,int ,size_t) ;
 int os_memcpy (scalar_t__*,scalar_t__*,size_t) ;
 int os_memset (scalar_t__*,int ,size_t) ;
 scalar_t__ random_get_bytes (scalar_t__*,size_t) ;
 int tls_alert (struct tlsv1_client*,int ,int ) ;
 scalar_t__ tls_derive_keys (struct tlsv1_client*,scalar_t__*,size_t) ;
 int tlsv1_client_free_dh (struct tlsv1_client*) ;
 int wpa_hexdump (int ,char*,scalar_t__*,size_t) ;
 int wpa_hexdump_key (int ,char*,scalar_t__*,size_t) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int tlsv1_key_x_dh(struct tlsv1_client *conn, u8 **pos, u8 *end)
{

 u8 *csecret, *csecret_start, *dh_yc, *shared;
 size_t csecret_len, dh_yc_len, shared_len;

 csecret_len = conn->dh_p_len;
 csecret = os_malloc(csecret_len);
 if (csecret == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "TLSv1: Failed to allocate "
      "memory for Yc (Diffie-Hellman)");
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
     TLS_ALERT_INTERNAL_ERROR);
  return -1;
 }
 if (random_get_bytes(csecret, csecret_len)) {
  wpa_printf(MSG_DEBUG, "TLSv1: Failed to get random "
      "data for Diffie-Hellman");
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
     TLS_ALERT_INTERNAL_ERROR);
  os_free(csecret);
  return -1;
 }

 if (os_memcmp(csecret, conn->dh_p, csecret_len) > 0)
  csecret[0] = 0;

 csecret_start = csecret;
 while (csecret_len > 1 && *csecret_start == 0) {
  csecret_start++;
  csecret_len--;
 }
 wpa_hexdump_key(MSG_DEBUG, "TLSv1: DH client's secret value",
   csecret_start, csecret_len);


 dh_yc_len = conn->dh_p_len;
 dh_yc = os_malloc(dh_yc_len);
 if (dh_yc == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "TLSv1: Failed to allocate "
      "memory for Diffie-Hellman");
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
     TLS_ALERT_INTERNAL_ERROR);
  os_free(csecret);
  return -1;
 }
 if (crypto_mod_exp(conn->dh_g, conn->dh_g_len,
      csecret_start, csecret_len,
      conn->dh_p, conn->dh_p_len,
      dh_yc, &dh_yc_len)) {
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
     TLS_ALERT_INTERNAL_ERROR);
  os_free(csecret);
  os_free(dh_yc);
  return -1;
 }

 wpa_hexdump(MSG_DEBUG, "TLSv1: DH Yc (client's public value)",
      dh_yc, dh_yc_len);

 if (end - *pos < 2) {
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
     TLS_ALERT_INTERNAL_ERROR);
  os_free(csecret);
  os_free(dh_yc);
  return -1;
 }
 WPA_PUT_BE16(*pos, dh_yc_len);
 *pos += 2;
 if (dh_yc_len > (size_t) (end - *pos)) {
  wpa_printf(MSG_DEBUG, "TLSv1: Not enough room in the "
      "message buffer for Yc");
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
     TLS_ALERT_INTERNAL_ERROR);
  os_free(csecret);
  os_free(dh_yc);
  return -1;
 }
 os_memcpy(*pos, dh_yc, dh_yc_len);
 *pos += dh_yc_len;
 os_free(dh_yc);

 shared_len = conn->dh_p_len;
 shared = os_malloc(shared_len);
 if (shared == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "TLSv1: Could not allocate memory for "
      "DH");
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
     TLS_ALERT_INTERNAL_ERROR);
  os_free(csecret);
  return -1;
 }


 if (crypto_mod_exp(conn->dh_ys, conn->dh_ys_len,
      csecret_start, csecret_len,
      conn->dh_p, conn->dh_p_len,
      shared, &shared_len)) {
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
     TLS_ALERT_INTERNAL_ERROR);
  os_free(csecret);
  os_free(shared);
  return -1;
 }
 wpa_hexdump_key(MSG_DEBUG, "TLSv1: Shared secret from DH key exchange",
   shared, shared_len);

 os_memset(csecret_start, 0, csecret_len);
 os_free(csecret);
 if (tls_derive_keys(conn, shared, shared_len)) {
  wpa_printf(MSG_DEBUG, "TLSv1: Failed to derive keys");
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
     TLS_ALERT_INTERNAL_ERROR);
  os_free(shared);
  return -1;
 }
 os_memset(shared, 0, shared_len);
 os_free(shared);
 tlsv1_client_free_dh(conn);
 return 0;
}
