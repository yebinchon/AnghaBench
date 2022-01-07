
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct tlsv1_server {int state; int verify; } ;
 int FAILED ;
 int TLS_ALERT_DECODE_ERROR ;
 int TLS_ALERT_LEVEL_FATAL ;
 scalar_t__ TLS_CONTENT_TYPE_ALERT ;
 scalar_t__ TLS_CONTENT_TYPE_HANDSHAKE ;
 int tls_process_certificate (struct tlsv1_server*,scalar_t__,scalar_t__ const*,size_t*) ;
 int tls_process_certificate_verify (struct tlsv1_server*,scalar_t__,scalar_t__ const*,size_t*) ;
 int tls_process_change_cipher_spec (struct tlsv1_server*,scalar_t__,scalar_t__ const*,size_t*) ;
 int tls_process_client_finished (struct tlsv1_server*,scalar_t__,scalar_t__ const*,size_t*) ;
 int tls_process_client_hello (struct tlsv1_server*,scalar_t__,scalar_t__ const*,size_t*) ;
 int tls_process_client_key_exchange (struct tlsv1_server*,scalar_t__,scalar_t__ const*,size_t*) ;
 int tls_verify_hash_add (int *,scalar_t__ const*,size_t) ;
 int tlsv1_server_alert (struct tlsv1_server*,int ,int ) ;
 int tlsv1_server_log (struct tlsv1_server*,char*,...) ;

int tlsv1_server_process_handshake(struct tlsv1_server *conn, u8 ct,
       const u8 *buf, size_t *len)
{
 if (ct == TLS_CONTENT_TYPE_ALERT) {
  if (*len < 2) {
   tlsv1_server_log(conn, "Alert underflow");
   tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
        TLS_ALERT_DECODE_ERROR);
   return -1;
  }
  tlsv1_server_log(conn, "Received alert %d:%d", buf[0], buf[1]);
  *len = 2;
  conn->state = FAILED;
  return -1;
 }

 switch (conn->state) {
 case 129:
  if (tls_process_client_hello(conn, ct, buf, len))
   return -1;
  break;
 case 131:
  if (tls_process_certificate(conn, ct, buf, len))
   return -1;
  break;
 case 128:
  if (tls_process_client_key_exchange(conn, ct, buf, len))
   return -1;
  break;
 case 133:
  if (tls_process_certificate_verify(conn, ct, buf, len))
   return -1;
  break;
 case 132:
  if (tls_process_change_cipher_spec(conn, ct, buf, len))
   return -1;
  break;
 case 130:
  if (tls_process_client_finished(conn, ct, buf, len))
   return -1;
  break;
 default:
  tlsv1_server_log(conn, "Unexpected state %d while processing received message",
     conn->state);
  return -1;
 }

 if (ct == TLS_CONTENT_TYPE_HANDSHAKE)
  tls_verify_hash_add(&conn->verify, buf, *len);

 return 0;
}
