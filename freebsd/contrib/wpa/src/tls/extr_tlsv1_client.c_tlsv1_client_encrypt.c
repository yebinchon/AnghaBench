
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tlsv1_client {int rl; } ;


 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 int TLS_ALERT_INTERNAL_ERROR ;
 int TLS_ALERT_LEVEL_FATAL ;
 int TLS_CONTENT_TYPE_APPLICATION_DATA ;
 int tls_alert (struct tlsv1_client*,int ,int ) ;
 scalar_t__ tlsv1_record_send (int *,int ,int *,size_t,int const*,size_t,size_t*) ;
 int wpa_hexdump_key (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*) ;

int tlsv1_client_encrypt(struct tlsv1_client *conn,
    const u8 *in_data, size_t in_len,
    u8 *out_data, size_t out_len)
{
 size_t rlen;

 wpa_hexdump_key(MSG_MSGDUMP, "TLSv1: Plaintext AppData",
   in_data, in_len);

 if (tlsv1_record_send(&conn->rl, TLS_CONTENT_TYPE_APPLICATION_DATA,
         out_data, out_len, in_data, in_len, &rlen) < 0) {
  wpa_printf(MSG_DEBUG, "TLSv1: Failed to create a record");
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
     TLS_ALERT_INTERNAL_ERROR);
  return -1;
 }

 return rlen;
}
