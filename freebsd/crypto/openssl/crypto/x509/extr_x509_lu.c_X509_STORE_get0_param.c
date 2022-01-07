
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_VERIFY_PARAM ;
struct TYPE_3__ {int * param; } ;
typedef TYPE_1__ X509_STORE ;



X509_VERIFY_PARAM *X509_STORE_get0_param(X509_STORE *ctx)
{
    return ctx->param;
}
