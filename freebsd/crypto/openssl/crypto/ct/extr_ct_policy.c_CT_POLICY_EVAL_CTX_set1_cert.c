
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_3__ {int * cert; } ;
typedef TYPE_1__ CT_POLICY_EVAL_CTX ;


 int X509_up_ref (int *) ;

int CT_POLICY_EVAL_CTX_set1_cert(CT_POLICY_EVAL_CTX *ctx, X509 *cert)
{
    if (!X509_up_ref(cert))
        return 0;
    ctx->cert = cert;
    return 1;
}
