
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void SSL_CTX ;


 int SSL_CTX_check_private_key (void*) ;
 int SSL_CTX_free (void*) ;
 int SSL_CTX_load_verify_locations (void*,char*,int *) ;
 void* SSL_CTX_new (int ) ;
 int SSL_CTX_set_client_CA_list (void*,int ) ;
 int SSL_CTX_set_verify (void*,int ,int *) ;
 int SSL_CTX_use_PrivateKey_file (void*,char*,int ) ;
 int SSL_CTX_use_certificate_chain_file (void*,char*) ;
 int SSL_FILETYPE_PEM ;
 int SSL_VERIFY_PEER ;
 int SSL_load_client_CA_file (char*) ;
 int SSLv23_server_method () ;
 int listen_sslctx_setup (void*) ;
 int listen_sslctx_setup_2 (void*) ;
 int log_crypto_err (char*) ;
 int log_err (char*,...) ;

void* listen_sslctx_create(char* key, char* pem, char* verifypem)
{
 (void)key; (void)pem; (void)verifypem;
 return ((void*)0);

}
