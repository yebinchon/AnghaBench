
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_VERIFY_PARAM ;
struct TYPE_3__ {int param; } ;
typedef TYPE_1__ SSL_CTX ;


 int X509_VERIFY_PARAM_set1 (int ,int *) ;

int SSL_CTX_set1_param(SSL_CTX *ctx, X509_VERIFY_PARAM *vpm)
{
    return X509_VERIFY_PARAM_set1(ctx->param, vpm);
}
