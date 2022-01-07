
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* data; } ;
struct TYPE_7__ {int md; int id_set; int id_len; int * id; int * gen_group; } ;
typedef TYPE_1__ SM2_PKEY_CTX ;
typedef TYPE_2__ EVP_PKEY_CTX ;


 int * EC_GROUP_dup (int *) ;
 int ERR_R_MALLOC_FAILURE ;
 int * OPENSSL_malloc (int ) ;
 int SM2_F_PKEY_SM2_COPY ;
 int SM2err (int ,int ) ;
 int memcpy (int *,int *,int ) ;
 int pkey_sm2_cleanup (TYPE_2__*) ;
 int pkey_sm2_init (TYPE_2__*) ;

__attribute__((used)) static int pkey_sm2_copy(EVP_PKEY_CTX *dst, EVP_PKEY_CTX *src)
{
    SM2_PKEY_CTX *dctx, *sctx;

    if (!pkey_sm2_init(dst))
        return 0;
    sctx = src->data;
    dctx = dst->data;
    if (sctx->gen_group != ((void*)0)) {
        dctx->gen_group = EC_GROUP_dup(sctx->gen_group);
        if (dctx->gen_group == ((void*)0)) {
            pkey_sm2_cleanup(dst);
            return 0;
        }
    }
    if (sctx->id != ((void*)0)) {
        dctx->id = OPENSSL_malloc(sctx->id_len);
        if (dctx->id == ((void*)0)) {
            SM2err(SM2_F_PKEY_SM2_COPY, ERR_R_MALLOC_FAILURE);
            pkey_sm2_cleanup(dst);
            return 0;
        }
        memcpy(dctx->id, sctx->id, sctx->id_len);
    }
    dctx->id_len = sctx->id_len;
    dctx->id_set = sctx->id_set;
    dctx->md = sctx->md;

    return 1;
}
