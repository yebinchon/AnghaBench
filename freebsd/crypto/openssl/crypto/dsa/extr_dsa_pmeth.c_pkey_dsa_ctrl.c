
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nbits; int qbits; int * md; void* pmd; } ;
struct TYPE_4__ {TYPE_2__* data; } ;
typedef TYPE_1__ EVP_PKEY_CTX ;
typedef int EVP_MD ;
typedef TYPE_2__ DSA_PKEY_CTX ;


 int DSA_F_PKEY_DSA_CTRL ;
 int DSA_R_INVALID_DIGEST_TYPE ;
 int DSAerr (int ,int ) ;
 int EVP_MD_type (int const*) ;
 int EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE ;
 int NID_dsa ;
 int NID_dsaWithSHA ;
 int NID_sha1 ;
 int NID_sha224 ;
 int NID_sha256 ;
 int NID_sha384 ;
 int NID_sha3_224 ;
 int NID_sha3_256 ;
 int NID_sha3_384 ;
 int NID_sha3_512 ;
 int NID_sha512 ;

__attribute__((used)) static int pkey_dsa_ctrl(EVP_PKEY_CTX *ctx, int type, int p1, void *p2)
{
    DSA_PKEY_CTX *dctx = ctx->data;

    switch (type) {
    case 134:
        if (p1 < 256)
            return -2;
        dctx->nbits = p1;
        return 1;

    case 132:
        if (p1 != 160 && p1 != 224 && p1 && p1 != 256)
            return -2;
        dctx->qbits = p1;
        return 1;

    case 133:
        if (EVP_MD_type((const EVP_MD *)p2) != NID_sha1 &&
            EVP_MD_type((const EVP_MD *)p2) != NID_sha224 &&
            EVP_MD_type((const EVP_MD *)p2) != NID_sha256) {
            DSAerr(DSA_F_PKEY_DSA_CTRL, DSA_R_INVALID_DIGEST_TYPE);
            return 0;
        }
        dctx->pmd = p2;
        return 1;

    case 130:
        if (EVP_MD_type((const EVP_MD *)p2) != NID_sha1 &&
            EVP_MD_type((const EVP_MD *)p2) != NID_dsa &&
            EVP_MD_type((const EVP_MD *)p2) != NID_dsaWithSHA &&
            EVP_MD_type((const EVP_MD *)p2) != NID_sha224 &&
            EVP_MD_type((const EVP_MD *)p2) != NID_sha256 &&
            EVP_MD_type((const EVP_MD *)p2) != NID_sha384 &&
            EVP_MD_type((const EVP_MD *)p2) != NID_sha512 &&
            EVP_MD_type((const EVP_MD *)p2) != NID_sha3_224 &&
            EVP_MD_type((const EVP_MD *)p2) != NID_sha3_256 &&
            EVP_MD_type((const EVP_MD *)p2) != NID_sha3_384 &&
            EVP_MD_type((const EVP_MD *)p2) != NID_sha3_512) {
            DSAerr(DSA_F_PKEY_DSA_CTRL, DSA_R_INVALID_DIGEST_TYPE);
            return 0;
        }
        dctx->md = p2;
        return 1;

    case 131:
        *(const EVP_MD **)p2 = dctx->md;
        return 1;

    case 135:
    case 128:
    case 136:
        return 1;

    case 129:
        DSAerr(DSA_F_PKEY_DSA_CTRL,
               EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE);
        return -2;
    default:
        return -2;

    }
}
