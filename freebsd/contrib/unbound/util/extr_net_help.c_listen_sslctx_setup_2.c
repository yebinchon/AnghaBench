
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;
typedef int EC_KEY ;


 int EC_KEY_free (int *) ;
 int * EC_KEY_new_by_curve_name (int ) ;
 int NID_X9_62_prime256v1 ;
 int SSL_CTX_set_ecdh_auto (int *,int) ;
 int SSL_CTX_set_tmp_ecdh (int *,int *) ;
 int log_crypto_err (char*) ;

void
listen_sslctx_setup_2(void* ctxt)
{
 (void)ctxt;

}
