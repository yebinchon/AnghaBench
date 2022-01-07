
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int kdf_oid; struct TYPE_6__* kdf_ukm; } ;
struct TYPE_5__ {TYPE_2__* data; } ;
typedef TYPE_1__ EVP_PKEY_CTX ;
typedef TYPE_2__ DH_PKEY_CTX ;


 int ASN1_OBJECT_free (int ) ;
 int OPENSSL_free (TYPE_2__*) ;

__attribute__((used)) static void pkey_dh_cleanup(EVP_PKEY_CTX *ctx)
{
    DH_PKEY_CTX *dctx = ctx->data;
    if (dctx != ((void*)0)) {
        OPENSSL_free(dctx->kdf_ukm);
        ASN1_OBJECT_free(dctx->kdf_oid);
        OPENSSL_free(dctx);
    }
}
