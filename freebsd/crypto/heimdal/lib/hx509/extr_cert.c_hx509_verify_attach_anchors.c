
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* hx509_verify_ctx ;
typedef int hx509_certs ;
struct TYPE_3__ {scalar_t__ trust_anchors; } ;


 int hx509_certs_free (scalar_t__*) ;
 scalar_t__ hx509_certs_ref (int ) ;

void
hx509_verify_attach_anchors(hx509_verify_ctx ctx, hx509_certs set)
{
    if (ctx->trust_anchors)
 hx509_certs_free(&ctx->trust_anchors);
    ctx->trust_anchors = hx509_certs_ref(set);
}
