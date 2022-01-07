
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_STORE_CTX_check_crl_fn ;
struct TYPE_3__ {int check_crl; } ;
typedef TYPE_1__ X509_STORE ;



X509_STORE_CTX_check_crl_fn X509_STORE_get_check_crl(X509_STORE *ctx)
{
    return ctx->check_crl;
}
