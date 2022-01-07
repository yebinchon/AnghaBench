
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tlsv1_server {int state; } ;


 int ESTABLISHED ;
 int os_free (int *) ;
 int * os_malloc (int) ;
 scalar_t__ tls_write_server_change_cipher_spec (struct tlsv1_server*,int **,int *) ;
 scalar_t__ tls_write_server_finished (struct tlsv1_server*,int **,int *) ;
 int tlsv1_server_log (struct tlsv1_server*,char*) ;

__attribute__((used)) static u8 * tls_send_change_cipher_spec(struct tlsv1_server *conn,
     size_t *out_len)
{
 u8 *msg, *end, *pos;

 *out_len = 0;

 msg = os_malloc(1000);
 if (msg == ((void*)0))
  return ((void*)0);

 pos = msg;
 end = msg + 1000;

 if (tls_write_server_change_cipher_spec(conn, &pos, end) < 0 ||
     tls_write_server_finished(conn, &pos, end) < 0) {
  os_free(msg);
  return ((void*)0);
 }

 *out_len = pos - msg;

 tlsv1_server_log(conn, "Handshake completed successfully");
 conn->state = ESTABLISHED;

 return msg;
}
