
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RUN_ONCE (int *,int ) ;
 int ssl_x509_store_ctx_idx ;
 int ssl_x509_store_ctx_init ;
 int ssl_x509_store_ctx_once ;

int SSL_get_ex_data_X509_STORE_CTX_idx(void)
{

    if (!RUN_ONCE(&ssl_x509_store_ctx_once, ssl_x509_store_ctx_init))
        return -1;
    return ssl_x509_store_ctx_idx;
}
