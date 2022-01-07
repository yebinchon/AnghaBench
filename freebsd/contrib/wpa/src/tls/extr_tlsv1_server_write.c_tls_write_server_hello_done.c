
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tlsv1_server {int verify; int rl; } ;


 int MSG_DEBUG ;
 int TLS_ALERT_INTERNAL_ERROR ;
 int TLS_ALERT_LEVEL_FATAL ;
 int TLS_CONTENT_TYPE_HANDSHAKE ;
 int TLS_HANDSHAKE_TYPE_SERVER_HELLO_DONE ;
 int WPA_PUT_BE24 (int *,int ) ;
 int tls_verify_hash_add (int *,int *,int) ;
 scalar_t__ tlsv1_record_send (int *,int ,int *,int,int *,int,size_t*) ;
 int tlsv1_server_alert (struct tlsv1_server*,int ,int ) ;
 int tlsv1_server_log (struct tlsv1_server*,char*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int tls_write_server_hello_done(struct tlsv1_server *conn,
           u8 **msgpos, u8 *end)
{
 u8 *pos;
 size_t rlen;
 u8 payload[4];

 tlsv1_server_log(conn, "Send ServerHelloDone");




 pos = payload;

 *pos++ = TLS_HANDSHAKE_TYPE_SERVER_HELLO_DONE;

 WPA_PUT_BE24(pos, 0);
 pos += 3;


 if (tlsv1_record_send(&conn->rl, TLS_CONTENT_TYPE_HANDSHAKE,
         *msgpos, end - *msgpos, payload, pos - payload,
         &rlen) < 0) {
  wpa_printf(MSG_DEBUG, "TLSv1: Failed to generate a record");
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_INTERNAL_ERROR);
  return -1;
 }

 tls_verify_hash_add(&conn->verify, payload, pos - payload);

 *msgpos += rlen;

 return 0;
}
