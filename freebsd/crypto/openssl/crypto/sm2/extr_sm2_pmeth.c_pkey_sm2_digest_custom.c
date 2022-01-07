
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {TYPE_2__* pkey; TYPE_3__* data; } ;
struct TYPE_8__ {int id_len; int id; int id_set; } ;
struct TYPE_6__ {int * ec; } ;
struct TYPE_7__ {TYPE_1__ pkey; } ;
typedef TYPE_3__ SM2_PKEY_CTX ;
typedef TYPE_4__ EVP_PKEY_CTX ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;
typedef int EC_KEY ;


 int EVP_DigestUpdate (int *,int *,size_t) ;
 int EVP_MAX_MD_SIZE ;
 int * EVP_MD_CTX_md (int *) ;
 int EVP_MD_size (int const*) ;
 int SM2_F_PKEY_SM2_DIGEST_CUSTOM ;
 int SM2_R_ID_NOT_SET ;
 int SM2_R_INVALID_DIGEST ;
 int SM2err (int ,int ) ;
 int sm2_compute_z_digest (int *,int const*,int ,int ,int *) ;

__attribute__((used)) static int pkey_sm2_digest_custom(EVP_PKEY_CTX *ctx, EVP_MD_CTX *mctx)
{
    uint8_t z[EVP_MAX_MD_SIZE];
    SM2_PKEY_CTX *smctx = ctx->data;
    EC_KEY *ec = ctx->pkey->pkey.ec;
    const EVP_MD *md = EVP_MD_CTX_md(mctx);
    int mdlen = EVP_MD_size(md);

    if (!smctx->id_set) {





        SM2err(SM2_F_PKEY_SM2_DIGEST_CUSTOM, SM2_R_ID_NOT_SET);
        return 0;
    }

    if (mdlen < 0) {
        SM2err(SM2_F_PKEY_SM2_DIGEST_CUSTOM, SM2_R_INVALID_DIGEST);
        return 0;
    }


    if (!sm2_compute_z_digest(z, md, smctx->id, smctx->id_len, ec))
        return 0;

    return EVP_DigestUpdate(mctx, z, (size_t)mdlen);
}
