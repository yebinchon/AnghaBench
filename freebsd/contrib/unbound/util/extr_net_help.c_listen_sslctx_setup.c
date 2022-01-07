
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;


 int SSL_CTX_set_cipher_list (int *,char*) ;
 int SSL_CTX_set_options (int *,int) ;
 int SSL_CTX_set_security_level (int *,int ) ;
 int SSL_OP_CIPHER_SERVER_PREFERENCE ;
 int SSL_OP_NO_SSLv2 ;
 int SSL_OP_NO_SSLv3 ;
 int SSL_OP_NO_TLSv1 ;
 int SSL_OP_NO_TLSv1_1 ;
 int log_crypto_err (char*) ;

int
listen_sslctx_setup(void* ctxt)
{
 (void)ctxt;

 return 1;
}
