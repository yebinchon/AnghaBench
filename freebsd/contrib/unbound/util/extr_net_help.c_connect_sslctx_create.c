
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void SSL_CTX ;


 int SSL_CTX_check_private_key (void*) ;
 int SSL_CTX_free (void*) ;
 int SSL_CTX_load_verify_locations (void*,char*,int *) ;
 void* SSL_CTX_new (int ) ;
 int SSL_CTX_set_options (void*,int) ;
 int SSL_CTX_set_verify (void*,int ,int *) ;
 int SSL_CTX_use_PrivateKey_file (void*,char*,int ) ;
 int SSL_CTX_use_certificate_chain_file (void*,char*) ;
 int SSL_FILETYPE_PEM ;
 int SSL_OP_NO_SSLv2 ;
 int SSL_OP_NO_SSLv3 ;
 int SSL_VERIFY_PEER ;
 int SSLv23_client_method () ;
 int add_WIN_cacerts_to_openssl_store (void*) ;
 int log_crypto_err (char*) ;
 int log_err (char*,char*) ;

void* connect_sslctx_create(char* key, char* pem, char* verifypem, int wincert)
{
 (void)key; (void)pem; (void)verifypem; (void)wincert;
 return ((void*)0);

}
