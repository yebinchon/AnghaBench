
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tlsv1_server {int rl; } ;
typedef int payload ;


 int MSG_DEBUG ;
 int TLS_ALERT_INTERNAL_ERROR ;
 int TLS_ALERT_LEVEL_FATAL ;
 int TLS_CHANGE_CIPHER_SPEC ;
 int TLS_CONTENT_TYPE_CHANGE_CIPHER_SPEC ;
 scalar_t__ tlsv1_record_change_write_cipher (int *) ;
 scalar_t__ tlsv1_record_send (int *,int ,int *,int,int *,int,size_t*) ;
 int tlsv1_server_alert (struct tlsv1_server*,int ,int ) ;
 int tlsv1_server_log (struct tlsv1_server*,char*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int tls_write_server_change_cipher_spec(struct tlsv1_server *conn,
            u8 **msgpos, u8 *end)
{
 size_t rlen;
 u8 payload[1];

 tlsv1_server_log(conn, "Send ChangeCipherSpec");

 payload[0] = TLS_CHANGE_CIPHER_SPEC;

 if (tlsv1_record_send(&conn->rl, TLS_CONTENT_TYPE_CHANGE_CIPHER_SPEC,
         *msgpos, end - *msgpos, payload, sizeof(payload),
         &rlen) < 0) {
  wpa_printf(MSG_DEBUG, "TLSv1: Failed to create a record");
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_INTERNAL_ERROR);
  return -1;
 }

 if (tlsv1_record_change_write_cipher(&conn->rl) < 0) {
  wpa_printf(MSG_DEBUG, "TLSv1: Failed to set write cipher for "
      "record layer");
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_INTERNAL_ERROR);
  return -1;
 }

 *msgpos += rlen;

 return 0;
}
