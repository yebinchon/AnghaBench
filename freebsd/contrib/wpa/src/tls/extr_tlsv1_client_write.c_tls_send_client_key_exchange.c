
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tlsv1_client {int state; TYPE_1__* cred; scalar_t__ certificate_requested; } ;
struct TYPE_2__ {scalar_t__ key; } ;


 int SERVER_CHANGE_CIPHER_SPEC ;
 int os_free (int *) ;
 int * os_malloc (size_t) ;
 scalar_t__ tls_client_cert_chain_der_len (struct tlsv1_client*) ;
 scalar_t__ tls_write_client_certificate (struct tlsv1_client*,int **,int *) ;
 scalar_t__ tls_write_client_certificate_verify (struct tlsv1_client*,int **,int *) ;
 scalar_t__ tls_write_client_change_cipher_spec (struct tlsv1_client*,int **,int *) ;
 scalar_t__ tls_write_client_finished (struct tlsv1_client*,int **,int *) ;
 scalar_t__ tls_write_client_key_exchange (struct tlsv1_client*,int **,int *) ;

__attribute__((used)) static u8 * tls_send_client_key_exchange(struct tlsv1_client *conn,
      size_t *out_len)
{
 u8 *msg, *end, *pos;
 size_t msglen;

 *out_len = 0;

 msglen = 2000;
 if (conn->certificate_requested)
  msglen += tls_client_cert_chain_der_len(conn);

 msg = os_malloc(msglen);
 if (msg == ((void*)0))
  return ((void*)0);

 pos = msg;
 end = msg + msglen;

 if (conn->certificate_requested) {
  if (tls_write_client_certificate(conn, &pos, end) < 0) {
   os_free(msg);
   return ((void*)0);
  }
 }

 if (tls_write_client_key_exchange(conn, &pos, end) < 0 ||
     (conn->certificate_requested && conn->cred && conn->cred->key &&
      tls_write_client_certificate_verify(conn, &pos, end) < 0) ||
     tls_write_client_change_cipher_spec(conn, &pos, end) < 0 ||
     tls_write_client_finished(conn, &pos, end) < 0) {
  os_free(msg);
  return ((void*)0);
 }

 *out_len = pos - msg;

 conn->state = SERVER_CHANGE_CIPHER_SPEC;

 return msg;
}
