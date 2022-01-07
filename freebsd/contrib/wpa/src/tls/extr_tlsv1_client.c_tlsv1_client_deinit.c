
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlsv1_client {int server_cert; int partial_input; int cred; struct tlsv1_client* client_hello_ext; int verify; int rl; int server_rsa_key; } ;


 int TLS_NULL_WITH_NULL_NULL ;
 int crypto_public_key_free (int ) ;
 int os_free (struct tlsv1_client*) ;
 int tls_verify_hash_free (int *) ;
 int tlsv1_client_free_dh (struct tlsv1_client*) ;
 int tlsv1_cred_free (int ) ;
 int tlsv1_record_change_read_cipher (int *) ;
 int tlsv1_record_change_write_cipher (int *) ;
 int tlsv1_record_set_cipher_suite (int *,int ) ;
 int wpabuf_free (int ) ;
 int x509_certificate_chain_free (int ) ;

void tlsv1_client_deinit(struct tlsv1_client *conn)
{
 crypto_public_key_free(conn->server_rsa_key);
 tlsv1_record_set_cipher_suite(&conn->rl, TLS_NULL_WITH_NULL_NULL);
 tlsv1_record_change_write_cipher(&conn->rl);
 tlsv1_record_change_read_cipher(&conn->rl);
 tls_verify_hash_free(&conn->verify);
 os_free(conn->client_hello_ext);
 tlsv1_client_free_dh(conn);
 tlsv1_cred_free(conn->cred);
 wpabuf_free(conn->partial_input);
 x509_certificate_chain_free(conn->server_cert);
 os_free(conn);
}
