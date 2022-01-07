
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int tls_version; } ;
struct tlsv1_server {int cipher_suite; int (* session_ticket_cb ) (int ,scalar_t__,int ,int ,int ,int ) ;int use_session_ticket; TYPE_1__ rl; int verify; int master_secret; int server_random; int client_random; int session_ticket_len; scalar_t__ session_ticket; int session_ticket_cb_ctx; scalar_t__ status_request_v2; scalar_t__ status_request; scalar_t__ session_id_len; int session_id; } ;
struct os_time {int sec; } ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_MSGDUMP ;
 int TLS_ALERT_HANDSHAKE_FAILURE ;
 int TLS_ALERT_INTERNAL_ERROR ;
 int TLS_ALERT_LEVEL_FATAL ;
 scalar_t__ TLS_COMPRESSION_NULL ;
 int TLS_CONTENT_TYPE_HANDSHAKE ;
 int TLS_EXT_STATUS_REQUEST ;
 int TLS_EXT_STATUS_REQUEST_V2 ;
 int TLS_HANDSHAKE_TYPE_SERVER_HELLO ;
 scalar_t__ TLS_RANDOM_LEN ;
 int TLS_RECORD_HEADER_LEN ;
 scalar_t__ TLS_SESSION_ID_MAX_LEN ;
 int WPA_PUT_BE16 (int *,int) ;
 int WPA_PUT_BE24 (int *,int) ;
 int WPA_PUT_BE32 (int ,int) ;
 int os_get_time (struct os_time*) ;
 int os_memcpy (int *,int ,scalar_t__) ;
 scalar_t__ random_get_bytes (int ,scalar_t__) ;
 int stub1 (int ,scalar_t__,int ,int ,int ,int ) ;
 int tls_verify_hash_add (int *,int *,int) ;
 scalar_t__ tlsv1_record_send (TYPE_1__*,int ,int *,int,int *,int,size_t*) ;
 int tlsv1_server_alert (struct tlsv1_server*,int ,int ) ;
 scalar_t__ tlsv1_server_derive_keys (struct tlsv1_server*,int *,int ) ;
 int tlsv1_server_log (struct tlsv1_server*,char*) ;
 int wpa_hexdump (int ,char*,int ,scalar_t__) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int tls_write_server_hello(struct tlsv1_server *conn,
      u8 **msgpos, u8 *end)
{
 u8 *pos, *rhdr, *hs_start, *hs_length, *ext_start;
 struct os_time now;
 size_t rlen;

 pos = *msgpos;

 tlsv1_server_log(conn, "Send ServerHello");
 rhdr = pos;
 pos += TLS_RECORD_HEADER_LEN;

 os_get_time(&now);



 WPA_PUT_BE32(conn->server_random, now.sec);
 if (random_get_bytes(conn->server_random + 4, TLS_RANDOM_LEN - 4)) {
  wpa_printf(MSG_ERROR, "TLSv1: Could not generate "
      "server_random");
  return -1;
 }
 wpa_hexdump(MSG_MSGDUMP, "TLSv1: server_random",
      conn->server_random, TLS_RANDOM_LEN);

 conn->session_id_len = TLS_SESSION_ID_MAX_LEN;
 if (random_get_bytes(conn->session_id, conn->session_id_len)) {
  wpa_printf(MSG_ERROR, "TLSv1: Could not generate "
      "session_id");
  return -1;
 }
 wpa_hexdump(MSG_MSGDUMP, "TLSv1: session_id",
      conn->session_id, conn->session_id_len);




 hs_start = pos;

 *pos++ = TLS_HANDSHAKE_TYPE_SERVER_HELLO;

 hs_length = pos;
 pos += 3;


 WPA_PUT_BE16(pos, conn->rl.tls_version);
 pos += 2;

 os_memcpy(pos, conn->server_random, TLS_RANDOM_LEN);
 pos += TLS_RANDOM_LEN;

 *pos++ = conn->session_id_len;
 os_memcpy(pos, conn->session_id, conn->session_id_len);
 pos += conn->session_id_len;

 WPA_PUT_BE16(pos, conn->cipher_suite);
 pos += 2;

 *pos++ = TLS_COMPRESSION_NULL;


 ext_start = pos;
 pos += 2;

 if (conn->status_request) {


  WPA_PUT_BE16(pos, TLS_EXT_STATUS_REQUEST);
  pos += 2;

  WPA_PUT_BE16(pos, 0);
  pos += 2;
 }

 if (conn->status_request_v2) {




  WPA_PUT_BE16(pos, TLS_EXT_STATUS_REQUEST_V2);
  pos += 2;

  WPA_PUT_BE16(pos, 0);
  pos += 2;
 }

 if (conn->session_ticket && conn->session_ticket_cb) {
  int res = conn->session_ticket_cb(
   conn->session_ticket_cb_ctx,
   conn->session_ticket, conn->session_ticket_len,
   conn->client_random, conn->server_random,
   conn->master_secret);
  if (res < 0) {
   tlsv1_server_log(conn, "SessionTicket callback indicated failure");
   tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
        TLS_ALERT_HANDSHAKE_FAILURE);
   return -1;
  }
  conn->use_session_ticket = res;

  if (conn->use_session_ticket) {
   if (tlsv1_server_derive_keys(conn, ((void*)0), 0) < 0) {
    wpa_printf(MSG_DEBUG, "TLSv1: Failed to "
        "derive keys");
    tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
         TLS_ALERT_INTERNAL_ERROR);
    return -1;
   }
  }
 }

 if (pos == ext_start + 2)
  pos -= 2;
 else
  WPA_PUT_BE16(ext_start, pos - ext_start - 2);

 WPA_PUT_BE24(hs_length, pos - hs_length - 3);
 tls_verify_hash_add(&conn->verify, hs_start, pos - hs_start);

 if (tlsv1_record_send(&conn->rl, TLS_CONTENT_TYPE_HANDSHAKE,
         rhdr, end - rhdr, hs_start, pos - hs_start,
         &rlen) < 0) {
  wpa_printf(MSG_DEBUG, "TLSv1: Failed to create TLS record");
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_INTERNAL_ERROR);
  return -1;
 }
 pos = rhdr + rlen;

 *msgpos = pos;

 return 0;
}
