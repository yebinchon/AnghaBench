
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct tlsv1_client {scalar_t__ state; struct wpabuf* partial_input; int alert_description; scalar_t__ alert_level; int rl; } ;


 scalar_t__ CLIENT_HELLO ;
 scalar_t__ FAILED ;
 int MSG_DEBUG ;
 int TLS_ALERT_INTERNAL_ERROR ;
 int TLS_ALERT_LEVEL_FATAL ;
 int os_free (int *) ;
 int * os_malloc (size_t) ;
 int * os_zalloc (int) ;
 int tls_alert (struct tlsv1_client*,int ,int ) ;
 int * tls_send_client_hello (struct tlsv1_client*,size_t*) ;
 int * tlsv1_client_handshake_write (struct tlsv1_client*,size_t*,int) ;
 scalar_t__ tlsv1_client_process_handshake (struct tlsv1_client*,int ,int *,size_t*,int **,size_t*) ;
 int * tlsv1_client_send_alert (struct tlsv1_client*,scalar_t__,int ,size_t*) ;
 int tlsv1_record_receive (int *,int const*,int,int *,size_t*,int *) ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc_copy (int const*,int) ;
 int wpabuf_free (struct wpabuf*) ;
 int * wpabuf_head (struct wpabuf*) ;
 size_t wpabuf_len (struct wpabuf*) ;
 int wpabuf_put_data (struct wpabuf*,int const*,size_t) ;
 scalar_t__ wpabuf_resize (struct wpabuf**,size_t) ;

u8 * tlsv1_client_handshake(struct tlsv1_client *conn,
       const u8 *in_data, size_t in_len,
       size_t *out_len, u8 **appl_data,
       size_t *appl_data_len, int *need_more_data)
{
 const u8 *pos, *end;
 u8 *msg = ((void*)0), *in_msg = ((void*)0), *in_pos, *in_end, alert, ct;
 size_t in_msg_len;
 int no_appl_data;
 int used;

 if (need_more_data)
  *need_more_data = 0;

 if (conn->state == CLIENT_HELLO) {
  if (in_len)
   return ((void*)0);
  return tls_send_client_hello(conn, out_len);
 }

 if (conn->partial_input) {
  if (wpabuf_resize(&conn->partial_input, in_len) < 0) {
   wpa_printf(MSG_DEBUG, "TLSv1: Failed to allocate "
       "memory for pending record");
   tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
      TLS_ALERT_INTERNAL_ERROR);
   goto failed;
  }
  wpabuf_put_data(conn->partial_input, in_data, in_len);
  in_data = wpabuf_head(conn->partial_input);
  in_len = wpabuf_len(conn->partial_input);
 }

 if (in_data == ((void*)0) || in_len == 0)
  return ((void*)0);

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
   tls_alert(conn, TLS_ALERT_LEVEL_FATAL, alert);
   goto failed;
  }
  if (used == 0) {
   struct wpabuf *partial;
   wpa_printf(MSG_DEBUG, "TLSv1: Need more data");
   partial = wpabuf_alloc_copy(pos, end - pos);
   wpabuf_free(conn->partial_input);
   conn->partial_input = partial;
   if (conn->partial_input == ((void*)0)) {
    wpa_printf(MSG_DEBUG, "TLSv1: Failed to "
        "allocate memory for pending "
        "record");
    tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_INTERNAL_ERROR);
    goto failed;
   }
   os_free(in_msg);
   if (need_more_data)
    *need_more_data = 1;
   return ((void*)0);
  }
  ct = pos[0];

  in_pos = in_msg;
  in_end = in_msg + in_msg_len;



  while (in_pos < in_end) {
   in_msg_len = in_end - in_pos;
   if (tlsv1_client_process_handshake(conn, ct, in_pos,
          &in_msg_len,
          appl_data,
          appl_data_len) < 0)
    goto failed;
   in_pos += in_msg_len;
  }

  pos += used;
 }

 os_free(in_msg);
 in_msg = ((void*)0);

 no_appl_data = appl_data == ((void*)0) || *appl_data == ((void*)0);
 msg = tlsv1_client_handshake_write(conn, out_len, no_appl_data);

failed:
 os_free(in_msg);
 if (conn->alert_level) {
  wpabuf_free(conn->partial_input);
  conn->partial_input = ((void*)0);
  conn->state = FAILED;
  os_free(msg);
  msg = tlsv1_client_send_alert(conn, conn->alert_level,
           conn->alert_description,
           out_len);
 } else if (msg == ((void*)0)) {
  msg = os_zalloc(1);
  *out_len = 0;
 }

 if (need_more_data == ((void*)0) || !(*need_more_data)) {
  wpabuf_free(conn->partial_input);
  conn->partial_input = ((void*)0);
 }

 return msg;
}
