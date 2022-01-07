
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tlsv1_server {int verify; int rl; int verify_peer; } ;


 int MSG_DEBUG ;
 int TLS_ALERT_INTERNAL_ERROR ;
 int TLS_ALERT_LEVEL_FATAL ;
 int TLS_CONTENT_TYPE_HANDSHAKE ;
 int TLS_HANDSHAKE_TYPE_CERTIFICATE_REQUEST ;
 int TLS_RECORD_HEADER_LEN ;
 int WPA_PUT_BE16 (int *,int ) ;
 int WPA_PUT_BE24 (int *,int) ;
 int tls_verify_hash_add (int *,int *,int) ;
 scalar_t__ tlsv1_record_send (int *,int ,int *,int,int *,int,size_t*) ;
 int tlsv1_server_alert (struct tlsv1_server*,int ,int ) ;
 int tlsv1_server_log (struct tlsv1_server*,char*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int tls_write_server_certificate_request(struct tlsv1_server *conn,
      u8 **msgpos, u8 *end)
{
 u8 *pos, *rhdr, *hs_start, *hs_length;
 size_t rlen;

 if (!conn->verify_peer) {
  wpa_printf(MSG_DEBUG, "TLSv1: No CertificateRequest needed");
  return 0;
 }

 pos = *msgpos;

 tlsv1_server_log(conn, "Send CertificateRequest");
 rhdr = pos;
 pos += TLS_RECORD_HEADER_LEN;




 hs_start = pos;

 *pos++ = TLS_HANDSHAKE_TYPE_CERTIFICATE_REQUEST;

 hs_length = pos;
 pos += 3;
 *pos++ = 1;
 *pos++ = 1;






 WPA_PUT_BE16(pos, 0);
 pos += 2;

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
