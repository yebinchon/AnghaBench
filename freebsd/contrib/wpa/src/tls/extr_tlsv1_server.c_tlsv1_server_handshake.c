
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tlsv1_server {scalar_t__ state; int write_alerts; int alert_description; scalar_t__ alert_level; int rl; } ;


 scalar_t__ FAILED ;
 int MSG_DEBUG ;
 int TLS_ALERT_INTERNAL_ERROR ;
 int TLS_ALERT_LEVEL_FATAL ;
 int os_free (int *) ;
 int * os_malloc (size_t) ;
 int tlsv1_record_receive (int *,int const*,int,int *,size_t*,int *) ;
 int tlsv1_server_alert (struct tlsv1_server*,int ,int ) ;
 int * tlsv1_server_handshake_write (struct tlsv1_server*,size_t*) ;
 scalar_t__ tlsv1_server_process_handshake (struct tlsv1_server*,int ,int *,size_t*) ;
 int * tlsv1_server_send_alert (struct tlsv1_server*,scalar_t__,int ,size_t*) ;
 int wpa_printf (int ,char*) ;

u8 * tlsv1_server_handshake(struct tlsv1_server *conn,
       const u8 *in_data, size_t in_len,
       size_t *out_len)
{
 const u8 *pos, *end;
 u8 *msg = ((void*)0), *in_msg, *in_pos, *in_end, alert, ct;
 size_t in_msg_len;
 int used;

 if (in_data == ((void*)0) || in_len == 0) {
  wpa_printf(MSG_DEBUG, "TLSv1: No input data to server");
  return ((void*)0);
 }

 pos = in_data;
 end = in_data + in_len;
 in_msg = os_malloc(in_len);
 if (in_msg == ((void*)0))
  return ((void*)0);


 while (pos < end) {
  in_msg_len = in_len;
  used = tlsv1_record_receive(&conn->rl, pos, end - pos,
         in_msg, &in_msg_len, &alert);
  if (used < 0) {
   wpa_printf(MSG_DEBUG, "TLSv1: Processing received "
       "record failed");
   tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL, alert);
   goto failed;
  }
  if (used == 0) {

   wpa_printf(MSG_DEBUG, "TLSv1: Partial processing not "
       "yet supported");
   tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
        TLS_ALERT_INTERNAL_ERROR);
   goto failed;
  }
  ct = pos[0];

  in_pos = in_msg;
  in_end = in_msg + in_msg_len;



  while (in_pos < in_end) {
   in_msg_len = in_end - in_pos;
   if (tlsv1_server_process_handshake(conn, ct, in_pos,
          &in_msg_len) < 0)
    goto failed;
   in_pos += in_msg_len;
  }

  pos += used;
 }

 os_free(in_msg);
 in_msg = ((void*)0);

 msg = tlsv1_server_handshake_write(conn, out_len);

failed:
 os_free(in_msg);
 if (conn->alert_level) {
  if (conn->state == FAILED) {

   wpa_printf(MSG_DEBUG, "TLSv1: Drop alert loop");
   os_free(msg);
   return ((void*)0);
  }
  conn->state = FAILED;
  os_free(msg);
  msg = tlsv1_server_send_alert(conn, conn->alert_level,
           conn->alert_description,
           out_len);
  conn->write_alerts++;
 }

 return msg;
}
