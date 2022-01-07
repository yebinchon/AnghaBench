
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct x509_certificate {int cert_len; int issuer; int cert_start; } ;
struct TYPE_4__ {int cipher_suite; } ;
struct tlsv1_server {int verify; TYPE_2__ rl; TYPE_1__* cred; } ;
struct tls_cipher_suite {scalar_t__ key_exchange; } ;
struct TYPE_3__ {struct x509_certificate* cert; int trusted_certs; } ;


 int MSG_DEBUG ;
 int TLS_ALERT_INTERNAL_ERROR ;
 int TLS_ALERT_LEVEL_FATAL ;
 int TLS_CONTENT_TYPE_HANDSHAKE ;
 int TLS_HANDSHAKE_TYPE_CERTIFICATE ;
 scalar_t__ TLS_KEY_X_DH_anon ;
 int TLS_RECORD_HEADER_LEN ;
 int WPA_PUT_BE24 (int *,int) ;
 int os_memcpy (int *,int ,int) ;
 struct tls_cipher_suite* tls_get_cipher_suite (int ) ;
 int tls_verify_hash_add (int *,int *,int) ;
 scalar_t__ tlsv1_record_send (TYPE_2__*,int ,int *,int,int *,int,size_t*) ;
 int tlsv1_server_alert (struct tlsv1_server*,int ,int ) ;
 int tlsv1_server_log (struct tlsv1_server*,char*) ;
 int wpa_printf (int ,char*,...) ;
 struct x509_certificate* x509_certificate_get_subject (int ,int *) ;
 scalar_t__ x509_certificate_self_signed (struct x509_certificate*) ;

__attribute__((used)) static int tls_write_server_certificate(struct tlsv1_server *conn,
     u8 **msgpos, u8 *end)
{
 u8 *pos, *rhdr, *hs_start, *hs_length, *cert_start;
 size_t rlen;
 struct x509_certificate *cert;
 const struct tls_cipher_suite *suite;

 suite = tls_get_cipher_suite(conn->rl.cipher_suite);
 if (suite && suite->key_exchange == TLS_KEY_X_DH_anon) {
  wpa_printf(MSG_DEBUG, "TLSv1: Do not send Certificate when "
      "using anonymous DH");
  return 0;
 }

 pos = *msgpos;
 if (TLS_RECORD_HEADER_LEN + 1 + 3 + 3 > end - pos) {
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_INTERNAL_ERROR);
  return -1;
 }

 tlsv1_server_log(conn, "Send Certificate");
 rhdr = pos;
 pos += TLS_RECORD_HEADER_LEN;




 hs_start = pos;

 *pos++ = TLS_HANDSHAKE_TYPE_CERTIFICATE;

 hs_length = pos;
 pos += 3;


 cert_start = pos;
 pos += 3;
 cert = conn->cred->cert;
 while (cert) {
  if (3 + cert->cert_len > (size_t) (end - pos)) {
   wpa_printf(MSG_DEBUG, "TLSv1: Not enough buffer space "
       "for Certificate (cert_len=%lu left=%lu)",
       (unsigned long) cert->cert_len,
       (unsigned long) (end - pos));
   tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
        TLS_ALERT_INTERNAL_ERROR);
   return -1;
  }
  WPA_PUT_BE24(pos, cert->cert_len);
  pos += 3;
  os_memcpy(pos, cert->cert_start, cert->cert_len);
  pos += cert->cert_len;

  if (x509_certificate_self_signed(cert))
   break;
  cert = x509_certificate_get_subject(conn->cred->trusted_certs,
          &cert->issuer);
 }
 if (cert == conn->cred->cert || cert == ((void*)0)) {






  wpa_printf(MSG_DEBUG, "TLSv1: Full server certificate chain "
      "not configured - validation may fail");
 }
 WPA_PUT_BE24(cert_start, pos - cert_start - 3);

 WPA_PUT_BE24(hs_length, pos - hs_length - 3);

 if (tlsv1_record_send(&conn->rl, TLS_CONTENT_TYPE_HANDSHAKE,
         rhdr, end - rhdr, hs_start, pos - hs_start,
         &rlen) < 0) {
  wpa_printf(MSG_DEBUG, "TLSv1: Failed to generate a record");
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_INTERNAL_ERROR);
  return -1;
 }
 pos = rhdr + rlen;

 tls_verify_hash_add(&conn->verify, hs_start, pos - hs_start);

 *msgpos = pos;

 return 0;
}
