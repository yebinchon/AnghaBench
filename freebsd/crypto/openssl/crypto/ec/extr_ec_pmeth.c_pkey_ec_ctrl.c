
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_15__ {TYPE_3__* group; } ;
struct TYPE_14__ {int cofactor_mode; int kdf_type; size_t kdf_outlen; unsigned char* kdf_ukm; int kdf_ukmlen; int * md; int * kdf_md; int * co_key; int * gen_group; } ;
struct TYPE_13__ {TYPE_2__* pkey; TYPE_5__* data; } ;
struct TYPE_12__ {int cofactor; } ;
struct TYPE_10__ {TYPE_6__* ec; } ;
struct TYPE_11__ {TYPE_1__ pkey; } ;
typedef TYPE_4__ EVP_PKEY_CTX ;
typedef int EVP_MD ;
typedef TYPE_5__ EC_PKEY_CTX ;
typedef TYPE_6__ EC_KEY ;
typedef int EC_GROUP ;


 int BN_is_one (int ) ;
 int EC_FLAG_COFACTOR_ECDH ;
 int EC_F_PKEY_EC_CTRL ;
 int EC_GROUP_free (int *) ;
 int * EC_GROUP_new_by_curve_name (int) ;
 int EC_GROUP_set_asn1_flag (int *,int) ;
 int EC_KEY_clear_flags (int *,int) ;
 int * EC_KEY_dup (TYPE_6__*) ;
 int EC_KEY_free (int *) ;
 int EC_KEY_get_flags (TYPE_6__*) ;
 int EC_KEY_set_flags (int *,int) ;
 int EC_R_INVALID_CURVE ;
 int EC_R_INVALID_DIGEST_TYPE ;
 int EC_R_NO_PARAMETERS_SET ;
 int ECerr (int ,int ) ;
 int EVP_MD_type (int const*) ;
 int EVP_PKEY_ECDH_KDF_NONE ;
 int EVP_PKEY_ECDH_KDF_X9_63 ;
 int NID_ecdsa_with_SHA1 ;
 int NID_sha1 ;
 int NID_sha224 ;
 int NID_sha256 ;
 int NID_sha384 ;
 int NID_sha3_224 ;
 int NID_sha3_256 ;
 int NID_sha3_384 ;
 int NID_sha3_512 ;
 int NID_sha512 ;
 int OPENSSL_free (unsigned char*) ;

__attribute__((used)) static int pkey_ec_ctrl(EVP_PKEY_CTX *ctx, int type, int p1, void *p2)
{
    EC_PKEY_CTX *dctx = ctx->data;
    EC_GROUP *group;
    switch (type) {
    case 136:
        group = EC_GROUP_new_by_curve_name(p1);
        if (group == ((void*)0)) {
            ECerr(EC_F_PKEY_EC_CTRL, EC_R_INVALID_CURVE);
            return 0;
        }
        EC_GROUP_free(dctx->gen_group);
        dctx->gen_group = group;
        return 1;

    case 135:
        if (!dctx->gen_group) {
            ECerr(EC_F_PKEY_EC_CTRL, EC_R_NO_PARAMETERS_SET);
            return 0;
        }
        EC_GROUP_set_asn1_flag(dctx->gen_group, p1);
        return 1;


    case 141:
        if (p1 == -2) {
            if (dctx->cofactor_mode != -1)
                return dctx->cofactor_mode;
            else {
                EC_KEY *ec_key = ctx->pkey->pkey.ec;
                return EC_KEY_get_flags(ec_key) & EC_FLAG_COFACTOR_ECDH ? 1 : 0;
            }
        } else if (p1 < -1 || p1 > 1)
            return -2;
        dctx->cofactor_mode = p1;
        if (p1 != -1) {
            EC_KEY *ec_key = ctx->pkey->pkey.ec;
            if (!ec_key->group)
                return -2;

            if (BN_is_one(ec_key->group->cofactor))
                return 1;
            if (!dctx->co_key) {
                dctx->co_key = EC_KEY_dup(ec_key);
                if (!dctx->co_key)
                    return 0;
            }
            if (p1)
                EC_KEY_set_flags(dctx->co_key, EC_FLAG_COFACTOR_ECDH);
            else
                EC_KEY_clear_flags(dctx->co_key, EC_FLAG_COFACTOR_ECDH);
        } else {
            EC_KEY_free(dctx->co_key);
            dctx->co_key = ((void*)0);
        }
        return 1;


    case 138:
        if (p1 == -2)
            return dctx->kdf_type;
        if (p1 != EVP_PKEY_ECDH_KDF_NONE && p1 != EVP_PKEY_ECDH_KDF_X9_63)
            return -2;
        dctx->kdf_type = p1;
        return 1;

    case 140:
        dctx->kdf_md = p2;
        return 1;

    case 134:
        *(const EVP_MD **)p2 = dctx->kdf_md;
        return 1;

    case 139:
        if (p1 <= 0)
            return -2;
        dctx->kdf_outlen = (size_t)p1;
        return 1;

    case 133:
        *(int *)p2 = dctx->kdf_outlen;
        return 1;

    case 137:
        OPENSSL_free(dctx->kdf_ukm);
        dctx->kdf_ukm = p2;
        if (p2)
            dctx->kdf_ukmlen = p1;
        else
            dctx->kdf_ukmlen = 0;
        return 1;

    case 132:
        *(unsigned char **)p2 = dctx->kdf_ukm;
        return dctx->kdf_ukmlen;

    case 130:
        if (EVP_MD_type((const EVP_MD *)p2) != NID_sha1 &&
            EVP_MD_type((const EVP_MD *)p2) != NID_ecdsa_with_SHA1 &&
            EVP_MD_type((const EVP_MD *)p2) != NID_sha224 &&
            EVP_MD_type((const EVP_MD *)p2) != NID_sha256 &&
            EVP_MD_type((const EVP_MD *)p2) != NID_sha384 &&
            EVP_MD_type((const EVP_MD *)p2) != NID_sha512 &&
            EVP_MD_type((const EVP_MD *)p2) != NID_sha3_224 &&
            EVP_MD_type((const EVP_MD *)p2) != NID_sha3_256 &&
            EVP_MD_type((const EVP_MD *)p2) != NID_sha3_384 &&
            EVP_MD_type((const EVP_MD *)p2) != NID_sha3_512) {
            ECerr(EC_F_PKEY_EC_CTRL, EC_R_INVALID_DIGEST_TYPE);
            return 0;
        }
        dctx->md = p2;
        return 1;

    case 131:
        *(const EVP_MD **)p2 = dctx->md;
        return 1;

    case 129:

    case 142:
    case 128:
    case 143:
        return 1;

    default:
        return -2;

    }
}
