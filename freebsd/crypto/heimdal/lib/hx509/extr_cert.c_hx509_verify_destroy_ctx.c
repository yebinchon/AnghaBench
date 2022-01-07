
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* hx509_verify_ctx ;
struct TYPE_5__ {int revoke_ctx; int trust_anchors; } ;


 int free (TYPE_1__*) ;
 int hx509_certs_free (int *) ;
 int hx509_revoke_free (int *) ;
 int memset (TYPE_1__*,int ,int) ;

void
hx509_verify_destroy_ctx(hx509_verify_ctx ctx)
{
    if (ctx) {
 hx509_certs_free(&ctx->trust_anchors);
 hx509_revoke_free(&ctx->revoke_ctx);
 memset(ctx, 0, sizeof(*ctx));
    }
    free(ctx);
}
