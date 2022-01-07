
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* reason_txt; char* subject; int reason; } ;
union tls_event_data {TYPE_1__ cert_fail; } ;
typedef scalar_t__ u8 ;
struct x509_certificate {int extensions_present; int ext_key_usage; int subject; int cert_len; int cert_start; struct x509_certificate* next; } ;
struct tlsv1_client {int flags; int state; struct x509_certificate* server_cert; TYPE_2__* cred; int cb_ctx; int (* event_cb ) (int ,int ,union tls_event_data*) ;int server_rsa_key; } ;
typedef int ev ;
typedef int buf ;
struct TYPE_4__ {scalar_t__ server_cert_only; int trusted_certs; scalar_t__ ca_cert_verify; scalar_t__ cert_probe; int srv_cert_hash; } ;


 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 int SERVER_KEY_EXCHANGE ;
 int SHA256_MAC_LEN ;
 int TLS_ALERT_BAD_CERTIFICATE ;
 int TLS_ALERT_CERTIFICATE_EXPIRED ;
 int TLS_ALERT_CERTIFICATE_REVOKED ;
 int TLS_ALERT_CERTIFICATE_UNKNOWN ;
 int TLS_ALERT_DECODE_ERROR ;
 int TLS_ALERT_LEVEL_FATAL ;
 int TLS_ALERT_UNEXPECTED_MESSAGE ;
 int TLS_ALERT_UNKNOWN_CA ;
 int TLS_ALERT_UNSUPPORTED_CERTIFICATE ;
 int TLS_CERT_CHAIN_FAILURE ;
 int TLS_CONN_DISABLE_TIME_CHECKS ;
 int TLS_CONN_REQUEST_OCSP ;
 scalar_t__ TLS_CONTENT_TYPE_HANDSHAKE ;
 int TLS_FAIL_BAD_CERTIFICATE ;
 int TLS_FAIL_EXPIRED ;
 int TLS_FAIL_REVOKED ;
 int TLS_FAIL_SERVER_CHAIN_PROBE ;
 int TLS_FAIL_UNSPECIFIED ;
 int TLS_FAIL_UNTRUSTED ;
 scalar_t__ TLS_HANDSHAKE_TYPE_CERTIFICATE ;
 scalar_t__ TLS_HANDSHAKE_TYPE_CERTIFICATE_REQUEST ;
 scalar_t__ TLS_HANDSHAKE_TYPE_SERVER_HELLO_DONE ;
 scalar_t__ TLS_HANDSHAKE_TYPE_SERVER_KEY_EXCHANGE ;
 size_t WPA_GET_BE24 (scalar_t__ const*) ;
 int X509_EXT_EXT_KEY_USAGE ;
 int X509_EXT_KEY_USAGE_ANY ;
 int X509_EXT_KEY_USAGE_SERVER_AUTH ;






 int crypto_public_key_free (int ) ;
 scalar_t__ os_memcmp (int ,scalar_t__*,int) ;
 int os_memset (union tls_event_data*,int ,int) ;
 scalar_t__ sha256_vector (int,int *,int *,scalar_t__*) ;
 int stub1 (int ,int ,union tls_event_data*) ;
 int stub2 (int ,int ,union tls_event_data*) ;
 int tls_alert (struct tlsv1_client*,int ,int) ;
 int tls_cert_chain_failure_event (struct tlsv1_client*,int ,struct x509_certificate*,int ,char*) ;
 scalar_t__ tls_parse_cert (scalar_t__ const*,size_t,int *) ;
 int tls_peer_cert_event (struct tlsv1_client*,size_t,struct x509_certificate*) ;
 int tls_process_certificate_request (struct tlsv1_client*,scalar_t__,scalar_t__ const*,size_t*) ;
 int tls_process_server_hello_done (struct tlsv1_client*,scalar_t__,scalar_t__ const*,size_t*) ;
 int tls_process_server_key_exchange (struct tlsv1_client*,scalar_t__,scalar_t__ const*,size_t*) ;
 int wpa_hexdump (int ,char*,scalar_t__*,int) ;
 int wpa_printf (int ,char*,...) ;
 int x509_certificate_chain_free (struct x509_certificate*) ;
 scalar_t__ x509_certificate_chain_validate (int ,struct x509_certificate*,int*,int) ;
 struct x509_certificate* x509_certificate_parse (scalar_t__ const*,size_t) ;
 int x509_name_string (int *,char*,int) ;

__attribute__((used)) static int tls_process_certificate(struct tlsv1_client *conn, u8 ct,
       const u8 *in_data, size_t *in_len)
{
 const u8 *pos, *end;
 size_t left, len, list_len, cert_len, idx;
 u8 type;
 struct x509_certificate *chain = ((void*)0), *last = ((void*)0), *cert;
 int reason;

 if (ct != TLS_CONTENT_TYPE_HANDSHAKE) {
  wpa_printf(MSG_DEBUG, "TLSv1: Expected Handshake; "
      "received content type 0x%x", ct);
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
     TLS_ALERT_UNEXPECTED_MESSAGE);
  return -1;
 }

 pos = in_data;
 left = *in_len;

 if (left < 4) {
  wpa_printf(MSG_DEBUG, "TLSv1: Too short Certificate message "
      "(len=%lu)", (unsigned long) left);
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL, TLS_ALERT_DECODE_ERROR);
  return -1;
 }

 type = *pos++;
 len = WPA_GET_BE24(pos);
 pos += 3;
 left -= 4;

 if (len > left) {
  wpa_printf(MSG_DEBUG, "TLSv1: Unexpected Certificate message "
      "length (len=%lu != left=%lu)",
      (unsigned long) len, (unsigned long) left);
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL, TLS_ALERT_DECODE_ERROR);
  return -1;
 }

 if (type == TLS_HANDSHAKE_TYPE_SERVER_KEY_EXCHANGE)
  return tls_process_server_key_exchange(conn, ct, in_data,
             in_len);
 if (type == TLS_HANDSHAKE_TYPE_CERTIFICATE_REQUEST)
  return tls_process_certificate_request(conn, ct, in_data,
             in_len);
 if (type == TLS_HANDSHAKE_TYPE_SERVER_HELLO_DONE)
  return tls_process_server_hello_done(conn, ct, in_data,
           in_len);
 if (type != TLS_HANDSHAKE_TYPE_CERTIFICATE) {
  wpa_printf(MSG_DEBUG, "TLSv1: Received unexpected handshake "
      "message %d (expected Certificate/"
      "ServerKeyExchange/CertificateRequest/"
      "ServerHelloDone)", type);
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
     TLS_ALERT_UNEXPECTED_MESSAGE);
  return -1;
 }

 wpa_printf(MSG_DEBUG,
     "TLSv1: Received Certificate (certificate_list len %lu)",
     (unsigned long) len);
 end = pos + len;

 if (end - pos < 3) {
  wpa_printf(MSG_DEBUG, "TLSv1: Too short Certificate "
      "(left=%lu)", (unsigned long) left);
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL, TLS_ALERT_DECODE_ERROR);
  return -1;
 }

 list_len = WPA_GET_BE24(pos);
 pos += 3;

 if ((size_t) (end - pos) != list_len) {
  wpa_printf(MSG_DEBUG, "TLSv1: Unexpected certificate_list "
      "length (len=%lu left=%lu)",
      (unsigned long) list_len,
      (unsigned long) (end - pos));
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL, TLS_ALERT_DECODE_ERROR);
  return -1;
 }

 idx = 0;
 while (pos < end) {
  if (end - pos < 3) {
   wpa_printf(MSG_DEBUG, "TLSv1: Failed to parse "
       "certificate_list");
   tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
      TLS_ALERT_DECODE_ERROR);
   x509_certificate_chain_free(chain);
   return -1;
  }

  cert_len = WPA_GET_BE24(pos);
  pos += 3;

  if ((size_t) (end - pos) < cert_len) {
   wpa_printf(MSG_DEBUG, "TLSv1: Unexpected certificate "
       "length (len=%lu left=%lu)",
       (unsigned long) cert_len,
       (unsigned long) (end - pos));
   tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
      TLS_ALERT_DECODE_ERROR);
   x509_certificate_chain_free(chain);
   return -1;
  }

  wpa_printf(MSG_DEBUG, "TLSv1: Certificate %lu (len %lu)",
      (unsigned long) idx, (unsigned long) cert_len);

  if (idx == 0) {
   crypto_public_key_free(conn->server_rsa_key);
   if (tls_parse_cert(pos, cert_len,
        &conn->server_rsa_key)) {
    wpa_printf(MSG_DEBUG, "TLSv1: Failed to parse "
        "the certificate");
    tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_BAD_CERTIFICATE);
    x509_certificate_chain_free(chain);
    return -1;
   }
  }

  cert = x509_certificate_parse(pos, cert_len);
  if (cert == ((void*)0)) {
   wpa_printf(MSG_DEBUG, "TLSv1: Failed to parse "
       "the certificate");
   tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
      TLS_ALERT_BAD_CERTIFICATE);
   x509_certificate_chain_free(chain);
   return -1;
  }

  tls_peer_cert_event(conn, idx, cert);

  if (last == ((void*)0))
   chain = cert;
  else
   last->next = cert;
  last = cert;

  idx++;
  pos += cert_len;
 }

 if (conn->cred && conn->cred->server_cert_only && chain) {
  u8 hash[SHA256_MAC_LEN];
  char buf[128];

  wpa_printf(MSG_DEBUG,
      "TLSv1: Validate server certificate hash");
  x509_name_string(&chain->subject, buf, sizeof(buf));
  wpa_printf(MSG_DEBUG, "TLSv1: 0: %s", buf);
  if (sha256_vector(1, &chain->cert_start, &chain->cert_len,
      hash) < 0 ||
      os_memcmp(conn->cred->srv_cert_hash, hash,
         SHA256_MAC_LEN) != 0) {
   wpa_printf(MSG_DEBUG,
       "TLSv1: Server certificate hash mismatch");
   wpa_hexdump(MSG_MSGDUMP, "TLSv1: SHA256 hash",
        hash, SHA256_MAC_LEN);
   if (conn->event_cb) {
    union tls_event_data ev;

    os_memset(&ev, 0, sizeof(ev));
    ev.cert_fail.reason = TLS_FAIL_UNSPECIFIED;
    ev.cert_fail.reason_txt =
     "Server certificate mismatch";
    ev.cert_fail.subject = buf;
    conn->event_cb(conn->cb_ctx,
            TLS_CERT_CHAIN_FAILURE, &ev);
   }
   tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
      TLS_ALERT_BAD_CERTIFICATE);
   x509_certificate_chain_free(chain);
   return -1;
  }
 } else if (conn->cred && conn->cred->cert_probe) {
  wpa_printf(MSG_DEBUG,
      "TLSv1: Reject server certificate on probe-only rune");
  if (conn->event_cb) {
   union tls_event_data ev;
   char buf[128];

   os_memset(&ev, 0, sizeof(ev));
   ev.cert_fail.reason = TLS_FAIL_SERVER_CHAIN_PROBE;
   ev.cert_fail.reason_txt =
    "Server certificate chain probe";
   if (chain) {
    x509_name_string(&chain->subject, buf,
       sizeof(buf));
    ev.cert_fail.subject = buf;
   }
   conn->event_cb(conn->cb_ctx, TLS_CERT_CHAIN_FAILURE,
           &ev);
  }
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
     TLS_ALERT_BAD_CERTIFICATE);
  x509_certificate_chain_free(chain);
  return -1;
 } else if (conn->cred && conn->cred->ca_cert_verify &&
     x509_certificate_chain_validate(
      conn->cred->trusted_certs, chain, &reason,
      !!(conn->flags & TLS_CONN_DISABLE_TIME_CHECKS))
     < 0) {
  int tls_reason;
  wpa_printf(MSG_DEBUG, "TLSv1: Server certificate chain "
      "validation failed (reason=%d)", reason);
  switch (reason) {
  case 133:
   tls_reason = TLS_ALERT_BAD_CERTIFICATE;
   tls_cert_chain_failure_event(
    conn, 0, chain, TLS_FAIL_BAD_CERTIFICATE,
    "bad certificate");
   break;
  case 128:
   tls_reason = TLS_ALERT_UNSUPPORTED_CERTIFICATE;
   break;
  case 131:
   tls_reason = TLS_ALERT_CERTIFICATE_REVOKED;
   tls_cert_chain_failure_event(
    conn, 0, chain, TLS_FAIL_REVOKED,
    "certificate revoked");
   break;
  case 132:
   tls_reason = TLS_ALERT_CERTIFICATE_EXPIRED;
   tls_cert_chain_failure_event(
    conn, 0, chain, TLS_FAIL_EXPIRED,
    "certificate has expired or is not yet valid");
   break;
  case 130:
   tls_reason = TLS_ALERT_CERTIFICATE_UNKNOWN;
   break;
  case 129:
   tls_reason = TLS_ALERT_UNKNOWN_CA;
   tls_cert_chain_failure_event(
    conn, 0, chain, TLS_FAIL_UNTRUSTED,
    "unknown CA");
   break;
  default:
   tls_reason = TLS_ALERT_BAD_CERTIFICATE;
   break;
  }
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL, tls_reason);
  x509_certificate_chain_free(chain);
  return -1;
 }

 if (conn->cred && !conn->cred->server_cert_only && chain &&
     (chain->extensions_present & X509_EXT_EXT_KEY_USAGE) &&
     !(chain->ext_key_usage &
       (X509_EXT_KEY_USAGE_ANY | X509_EXT_KEY_USAGE_SERVER_AUTH))) {
  tls_cert_chain_failure_event(
   conn, 0, chain, TLS_FAIL_BAD_CERTIFICATE,
   "certificate not allowed for server authentication");
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
     TLS_ALERT_BAD_CERTIFICATE);
  x509_certificate_chain_free(chain);
  return -1;
 }

 if (conn->flags & TLS_CONN_REQUEST_OCSP) {
  x509_certificate_chain_free(conn->server_cert);
  conn->server_cert = chain;
 } else {
  x509_certificate_chain_free(chain);
 }

 *in_len = end - in_data;

 conn->state = SERVER_KEY_EXCHANGE;

 return 0;
}
