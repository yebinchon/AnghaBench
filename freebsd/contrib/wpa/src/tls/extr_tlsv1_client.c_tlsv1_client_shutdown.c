
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlsv1_client {scalar_t__ session_resumed; int * server_rsa_key; scalar_t__ certificate_requested; int rl; int verify; int state; } ;


 int CLIENT_HELLO ;
 int MSG_DEBUG ;
 int TLS_NULL_WITH_NULL_NULL ;
 int crypto_public_key_free (int *) ;
 scalar_t__ tls_verify_hash_init (int *) ;
 int tlsv1_record_change_read_cipher (int *) ;
 int tlsv1_record_change_write_cipher (int *) ;
 int tlsv1_record_set_cipher_suite (int *,int ) ;
 int wpa_printf (int ,char*) ;

int tlsv1_client_shutdown(struct tlsv1_client *conn)
{
 conn->state = CLIENT_HELLO;

 if (tls_verify_hash_init(&conn->verify) < 0) {
  wpa_printf(MSG_DEBUG, "TLSv1: Failed to re-initialize verify "
      "hash");
  return -1;
 }

 tlsv1_record_set_cipher_suite(&conn->rl, TLS_NULL_WITH_NULL_NULL);
 tlsv1_record_change_write_cipher(&conn->rl);
 tlsv1_record_change_read_cipher(&conn->rl);

 conn->certificate_requested = 0;
 crypto_public_key_free(conn->server_rsa_key);
 conn->server_rsa_key = ((void*)0);
 conn->session_resumed = 0;

 return 0;
}
