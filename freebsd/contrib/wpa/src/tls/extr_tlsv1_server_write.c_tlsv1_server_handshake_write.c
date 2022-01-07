
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tlsv1_server {int state; int use_session_ticket; } ;


 int ESTABLISHED ;


 int * tls_send_change_cipher_spec (struct tlsv1_server*,size_t*) ;
 int * tls_send_server_hello (struct tlsv1_server*,size_t*) ;
 int tlsv1_server_log (struct tlsv1_server*,char*,int) ;

u8 * tlsv1_server_handshake_write(struct tlsv1_server *conn, size_t *out_len)
{
 switch (conn->state) {
 case 128:
  return tls_send_server_hello(conn, out_len);
 case 129:
  return tls_send_change_cipher_spec(conn, out_len);
 default:
  if (conn->state == ESTABLISHED && conn->use_session_ticket) {

   return ((void*)0);
  }
  tlsv1_server_log(conn, "Unexpected state %d while generating reply",
     conn->state);
  return ((void*)0);
 }
}
