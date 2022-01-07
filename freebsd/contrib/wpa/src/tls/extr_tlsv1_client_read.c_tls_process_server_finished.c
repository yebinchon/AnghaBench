
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_4__ {scalar_t__ tls_version; } ;
struct TYPE_3__ {int * sha1_server; int * md5_server; int * sha256_server; } ;
struct tlsv1_client {scalar_t__ use_session_ticket; scalar_t__ session_resumed; int state; int master_secret; TYPE_2__ rl; TYPE_1__ verify; } ;


 int ACK_FINISHED ;
 int CHANGE_CIPHER_SPEC ;
 int MD5_MAC_LEN ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int MSG_MSGDUMP ;
 int SHA1_MAC_LEN ;
 size_t SHA256_MAC_LEN ;
 int TLS_ALERT_DECODE_ERROR ;
 int TLS_ALERT_DECRYPT_ERROR ;
 int TLS_ALERT_INTERNAL_ERROR ;
 int TLS_ALERT_LEVEL_FATAL ;
 int TLS_ALERT_UNEXPECTED_MESSAGE ;
 scalar_t__ TLS_CONTENT_TYPE_HANDSHAKE ;
 scalar_t__ const TLS_HANDSHAKE_TYPE_FINISHED ;
 int TLS_MASTER_SECRET_LEN ;
 int TLS_VERIFY_DATA_LEN ;
 scalar_t__ TLS_VERSION_1_2 ;
 size_t WPA_GET_BE24 (scalar_t__ const*) ;
 scalar_t__ crypto_hash_finish (int *,scalar_t__*,size_t*) ;
 scalar_t__ os_memcmp_const (scalar_t__ const*,scalar_t__*,int) ;
 int tls_alert (struct tlsv1_client*,int ,int ) ;
 scalar_t__ tls_prf (scalar_t__,int ,int ,char*,scalar_t__*,size_t,scalar_t__*,int) ;
 int wpa_hexdump (int ,char*,scalar_t__ const*,int) ;
 int wpa_hexdump_key (int ,char*,scalar_t__*,int) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int tls_process_server_finished(struct tlsv1_client *conn, u8 ct,
           const u8 *in_data, size_t *in_len)
{
 const u8 *pos, *end;
 size_t left, len, hlen;
 u8 verify_data[TLS_VERIFY_DATA_LEN];
 u8 hash[MD5_MAC_LEN + SHA1_MAC_LEN];

 if (ct != TLS_CONTENT_TYPE_HANDSHAKE) {
  wpa_printf(MSG_DEBUG, "TLSv1: Expected Finished; "
      "received content type 0x%x", ct);
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
     TLS_ALERT_UNEXPECTED_MESSAGE);
  return -1;
 }

 pos = in_data;
 left = *in_len;

 if (left < 4) {
  wpa_printf(MSG_DEBUG, "TLSv1: Too short record (left=%lu) for "
      "Finished",
      (unsigned long) left);
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
     TLS_ALERT_DECODE_ERROR);
  return -1;
 }

 if (pos[0] != TLS_HANDSHAKE_TYPE_FINISHED) {
  wpa_printf(MSG_DEBUG, "TLSv1: Expected Finished; received "
      "type 0x%x", pos[0]);
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
     TLS_ALERT_UNEXPECTED_MESSAGE);
  return -1;
 }

 len = WPA_GET_BE24(pos + 1);

 pos += 4;
 left -= 4;

 if (len > left) {
  wpa_printf(MSG_DEBUG, "TLSv1: Too short buffer for Finished "
      "(len=%lu > left=%lu)",
      (unsigned long) len, (unsigned long) left);
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
     TLS_ALERT_DECODE_ERROR);
  return -1;
 }
 end = pos + len;
 if (len != TLS_VERIFY_DATA_LEN) {
  wpa_printf(MSG_DEBUG, "TLSv1: Unexpected verify_data length "
      "in Finished: %lu (expected %d)",
      (unsigned long) len, TLS_VERIFY_DATA_LEN);
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
     TLS_ALERT_DECODE_ERROR);
  return -1;
 }
 wpa_hexdump(MSG_MSGDUMP, "TLSv1: verify_data in Finished",
      pos, TLS_VERIFY_DATA_LEN);
 hlen = MD5_MAC_LEN;
 if (conn->verify.md5_server == ((void*)0) ||
     crypto_hash_finish(conn->verify.md5_server, hash, &hlen) < 0) {
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
     TLS_ALERT_INTERNAL_ERROR);
  conn->verify.md5_server = ((void*)0);
  crypto_hash_finish(conn->verify.sha1_server, ((void*)0), ((void*)0));
  conn->verify.sha1_server = ((void*)0);
  return -1;
 }
 conn->verify.md5_server = ((void*)0);
 hlen = SHA1_MAC_LEN;
 if (conn->verify.sha1_server == ((void*)0) ||
     crypto_hash_finish(conn->verify.sha1_server, hash + MD5_MAC_LEN,
          &hlen) < 0) {
  conn->verify.sha1_server = ((void*)0);
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
     TLS_ALERT_INTERNAL_ERROR);
  return -1;
 }
 conn->verify.sha1_server = ((void*)0);
 hlen = MD5_MAC_LEN + SHA1_MAC_LEN;





 if (tls_prf(conn->rl.tls_version,
      conn->master_secret, TLS_MASTER_SECRET_LEN,
      "server finished", hash, hlen,
      verify_data, TLS_VERIFY_DATA_LEN)) {
  wpa_printf(MSG_DEBUG, "TLSv1: Failed to derive verify_data");
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
     TLS_ALERT_DECRYPT_ERROR);
  return -1;
 }
 wpa_hexdump_key(MSG_DEBUG, "TLSv1: verify_data (server)",
   verify_data, TLS_VERIFY_DATA_LEN);

 if (os_memcmp_const(pos, verify_data, TLS_VERIFY_DATA_LEN) != 0) {
  wpa_printf(MSG_INFO, "TLSv1: Mismatch in verify_data");
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
     TLS_ALERT_DECRYPT_ERROR);
  return -1;
 }

 wpa_printf(MSG_DEBUG, "TLSv1: Received Finished");

 *in_len = end - in_data;

 conn->state = (conn->session_resumed || conn->use_session_ticket) ?
  CHANGE_CIPHER_SPEC : ACK_FINISHED;

 return 0;
}
