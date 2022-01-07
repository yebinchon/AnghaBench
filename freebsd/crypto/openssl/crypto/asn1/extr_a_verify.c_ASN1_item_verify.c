
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int algorithm; } ;
typedef TYPE_2__ X509_ALGOR ;
struct TYPE_15__ {scalar_t__ type; int flags; scalar_t__ length; int data; } ;
struct TYPE_14__ {TYPE_1__* ameth; } ;
struct TYPE_12__ {int (* item_verify ) (int *,int const*,void*,TYPE_2__*,TYPE_4__*,TYPE_3__*) ;scalar_t__ pkey_id; } ;
typedef TYPE_3__ EVP_PKEY ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;
typedef int ASN1_ITEM ;
typedef TYPE_4__ ASN1_BIT_STRING ;


 int ASN1_F_ASN1_ITEM_VERIFY ;
 int ASN1_R_INVALID_BIT_STRING_BITS_LEFT ;
 int ASN1_R_UNKNOWN_MESSAGE_DIGEST_ALGORITHM ;
 int ASN1_R_UNKNOWN_SIGNATURE_ALGORITHM ;
 int ASN1_R_WRONG_PUBLIC_KEY_TYPE ;
 int ASN1_item_i2d (void*,unsigned char**,int const*) ;
 int ASN1err (int ,int ) ;
 int ERR_R_EVP_LIB ;
 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 int ERR_R_PASSED_NULL_PARAMETER ;
 int EVP_DigestVerify (int *,int ,size_t,unsigned char*,int) ;
 int EVP_DigestVerifyInit (int *,int *,int const*,int *,TYPE_3__*) ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 scalar_t__ EVP_PKEY_type (int) ;
 int * EVP_get_digestbynid (int) ;
 int NID_undef ;
 int OBJ_find_sigid_algs (int ,int*,int*) ;
 int OBJ_obj2nid (int ) ;
 int OPENSSL_clear_free (unsigned char*,size_t) ;
 scalar_t__ V_ASN1_BIT_STRING ;
 int stub1 (int *,int const*,void*,TYPE_2__*,TYPE_4__*,TYPE_3__*) ;

int ASN1_item_verify(const ASN1_ITEM *it, X509_ALGOR *a,
                     ASN1_BIT_STRING *signature, void *asn, EVP_PKEY *pkey)
{
    EVP_MD_CTX *ctx = ((void*)0);
    unsigned char *buf_in = ((void*)0);
    int ret = -1, inl = 0;
    int mdnid, pknid;
    size_t inll = 0;

    if (!pkey) {
        ASN1err(ASN1_F_ASN1_ITEM_VERIFY, ERR_R_PASSED_NULL_PARAMETER);
        return -1;
    }

    if (signature->type == V_ASN1_BIT_STRING && signature->flags & 0x7) {
        ASN1err(ASN1_F_ASN1_ITEM_VERIFY, ASN1_R_INVALID_BIT_STRING_BITS_LEFT);
        return -1;
    }

    ctx = EVP_MD_CTX_new();
    if (ctx == ((void*)0)) {
        ASN1err(ASN1_F_ASN1_ITEM_VERIFY, ERR_R_MALLOC_FAILURE);
        goto err;
    }


    if (!OBJ_find_sigid_algs(OBJ_obj2nid(a->algorithm), &mdnid, &pknid)) {
        ASN1err(ASN1_F_ASN1_ITEM_VERIFY, ASN1_R_UNKNOWN_SIGNATURE_ALGORITHM);
        goto err;
    }
    if (mdnid == NID_undef) {
        if (!pkey->ameth || !pkey->ameth->item_verify) {
            ASN1err(ASN1_F_ASN1_ITEM_VERIFY,
                    ASN1_R_UNKNOWN_SIGNATURE_ALGORITHM);
            goto err;
        }
        ret = pkey->ameth->item_verify(ctx, it, asn, a, signature, pkey);





        if (ret != 2)
            goto err;
        ret = -1;
    } else {
        const EVP_MD *type = EVP_get_digestbynid(mdnid);

        if (type == ((void*)0)) {
            ASN1err(ASN1_F_ASN1_ITEM_VERIFY,
                    ASN1_R_UNKNOWN_MESSAGE_DIGEST_ALGORITHM);
            goto err;
        }


        if (EVP_PKEY_type(pknid) != pkey->ameth->pkey_id) {
            ASN1err(ASN1_F_ASN1_ITEM_VERIFY, ASN1_R_WRONG_PUBLIC_KEY_TYPE);
            goto err;
        }

        if (!EVP_DigestVerifyInit(ctx, ((void*)0), type, ((void*)0), pkey)) {
            ASN1err(ASN1_F_ASN1_ITEM_VERIFY, ERR_R_EVP_LIB);
            ret = 0;
            goto err;
        }

    }

    inl = ASN1_item_i2d(asn, &buf_in, it);
    if (inl <= 0) {
        ASN1err(ASN1_F_ASN1_ITEM_VERIFY, ERR_R_INTERNAL_ERROR);
        goto err;
    }
    if (buf_in == ((void*)0)) {
        ASN1err(ASN1_F_ASN1_ITEM_VERIFY, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    inll = inl;

    ret = EVP_DigestVerify(ctx, signature->data, (size_t)signature->length,
                           buf_in, inl);
    if (ret <= 0) {
        ASN1err(ASN1_F_ASN1_ITEM_VERIFY, ERR_R_EVP_LIB);
        goto err;
    }
    ret = 1;
 err:
    OPENSSL_clear_free(buf_in, inll);
    EVP_MD_CTX_free(ctx);
    return ret;
}
