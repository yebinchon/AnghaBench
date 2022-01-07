
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int other_ctx; } ;
typedef TYPE_1__ X509_STORE_CTX ;
typedef int X509 ;


 int X509_up_ref (int *) ;
 int * find_issuer (TYPE_1__*,int ,int *) ;

__attribute__((used)) static int get_issuer_sk(X509 **issuer, X509_STORE_CTX *ctx, X509 *x)
{
    *issuer = find_issuer(ctx, ctx->other_ctx, x);
    if (*issuer) {
        X509_up_ref(*issuer);
        return 1;
    } else
        return 0;
}
