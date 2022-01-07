
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlsv1_credentials {void* ocsp_stapling_response_multi; void* ocsp_stapling_response; } ;
struct tls_global {int server; struct tlsv1_credentials* server_cred; } ;
struct tls_connection_params {scalar_t__ ocsp_stapling_response_multi; scalar_t__ ocsp_stapling_response; int dh_blob_len; int dh_blob; int dh_file; int private_key_blob_len; int private_key_blob; int private_key_passwd; int private_key; int client_cert_blob_len; int client_cert_blob; int client_cert; int ca_path; int ca_cert_blob_len; int ca_cert_blob; int ca_cert; scalar_t__ check_cert_subject; } ;


 int MSG_INFO ;
 void* os_strdup (scalar_t__) ;
 struct tlsv1_credentials* tlsv1_cred_alloc () ;
 int tlsv1_cred_free (struct tlsv1_credentials*) ;
 scalar_t__ tlsv1_set_ca_cert (struct tlsv1_credentials*,int ,int ,int ,int ) ;
 scalar_t__ tlsv1_set_cert (struct tlsv1_credentials*,int ,int ,int ) ;
 scalar_t__ tlsv1_set_dhparams (struct tlsv1_credentials*,int ,int ,int ) ;
 scalar_t__ tlsv1_set_private_key (struct tlsv1_credentials*,int ,int ,int ,int ) ;
 int wpa_printf (int ,char*) ;

int tls_global_set_params(void *tls_ctx,
     const struct tls_connection_params *params)
{
 return -1;

}
