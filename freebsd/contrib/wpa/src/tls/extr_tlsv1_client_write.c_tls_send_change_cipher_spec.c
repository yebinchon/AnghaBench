
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tlsv1_client {int session_resumed; int state; scalar_t__ use_session_ticket; } ;


 int ESTABLISHED ;
 int MSG_DEBUG ;
 int os_free (int *) ;
 int * os_malloc (int) ;
 scalar_t__ tls_write_client_change_cipher_spec (struct tlsv1_client*,int **,int *) ;
 scalar_t__ tls_write_client_finished (struct tlsv1_client*,int **,int *) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static u8 * tls_send_change_cipher_spec(struct tlsv1_client *conn,
     size_t *out_len)
{
 u8 *msg, *end, *pos;

 *out_len = 0;

 msg = os_malloc(1000);
 if (msg == ((void*)0))
  return ((void*)0);

 pos = msg;
 end = msg + 1000;

 if (tls_write_client_change_cipher_spec(conn, &pos, end) < 0 ||
     tls_write_client_finished(conn, &pos, end) < 0) {
  os_free(msg);
  return ((void*)0);
 }

 *out_len = pos - msg;

 wpa_printf(MSG_DEBUG, "TLSv1: Session resumption completed "
     "successfully");
 if (!conn->session_resumed && conn->use_session_ticket)
  conn->session_resumed = 1;
 conn->state = ESTABLISHED;

 return msg;
}
