
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_4__* parameter; int algorithm; } ;
typedef TYPE_1__ X509_ALGOR ;
struct TYPE_10__ {scalar_t__ type; } ;
struct TYPE_9__ {unsigned char* key; size_t keylen; scalar_t__ debug; int * cipher; TYPE_1__* contentEncryptionAlgorithm; } ;
typedef int EVP_CIPHER_CTX ;
typedef int EVP_CIPHER ;
typedef TYPE_2__ CMS_EncryptedContentInfo ;
typedef int BIO ;


 int ASN1_TYPE_free (TYPE_4__*) ;
 TYPE_4__* ASN1_TYPE_new () ;
 int BIO_f_cipher () ;
 int BIO_free (int *) ;
 int BIO_get_cipher_ctx (int *,int **) ;
 int * BIO_new (int ) ;
 int CMS_F_CMS_ENCRYPTEDCONTENT_INIT_BIO ;
 int CMS_R_CIPHER_INITIALISATION_ERROR ;
 int CMS_R_CIPHER_PARAMETER_INITIALISATION_ERROR ;
 int CMS_R_INVALID_KEY_LENGTH ;
 int CMS_R_UNKNOWN_CIPHER ;
 int CMSerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int ERR_clear_error () ;
 int EVP_CIPHER_CTX_iv_length (int *) ;
 size_t EVP_CIPHER_CTX_key_length (int *) ;
 scalar_t__ EVP_CIPHER_CTX_rand_key (int *,unsigned char*) ;
 scalar_t__ EVP_CIPHER_CTX_set_key_length (int *,size_t) ;
 int EVP_CIPHER_CTX_type (int *) ;
 scalar_t__ EVP_CIPHER_asn1_to_param (int *,TYPE_4__*) ;
 scalar_t__ EVP_CIPHER_param_to_asn1 (int *,TYPE_4__*) ;
 scalar_t__ EVP_CipherInit_ex (int *,int const*,int *,unsigned char*,unsigned char*,int) ;
 int EVP_MAX_IV_LENGTH ;
 int * EVP_get_cipherbyobj (int ) ;
 int OBJ_nid2obj (int ) ;
 int OPENSSL_clear_free (unsigned char*,size_t) ;
 unsigned char* OPENSSL_malloc (size_t) ;
 scalar_t__ RAND_bytes (unsigned char*,int) ;
 scalar_t__ V_ASN1_UNDEF ;

BIO *cms_EncryptedContent_init_bio(CMS_EncryptedContentInfo *ec)
{
    BIO *b;
    EVP_CIPHER_CTX *ctx;
    const EVP_CIPHER *ciph;
    X509_ALGOR *calg = ec->contentEncryptionAlgorithm;
    unsigned char iv[EVP_MAX_IV_LENGTH], *piv = ((void*)0);
    unsigned char *tkey = ((void*)0);
    size_t tkeylen = 0;

    int ok = 0;

    int enc, keep_key = 0;

    enc = ec->cipher ? 1 : 0;

    b = BIO_new(BIO_f_cipher());
    if (b == ((void*)0)) {
        CMSerr(CMS_F_CMS_ENCRYPTEDCONTENT_INIT_BIO, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    BIO_get_cipher_ctx(b, &ctx);

    if (enc) {
        ciph = ec->cipher;



        if (ec->key)
            ec->cipher = ((void*)0);
    } else {
        ciph = EVP_get_cipherbyobj(calg->algorithm);

        if (!ciph) {
            CMSerr(CMS_F_CMS_ENCRYPTEDCONTENT_INIT_BIO, CMS_R_UNKNOWN_CIPHER);
            goto err;
        }
    }

    if (EVP_CipherInit_ex(ctx, ciph, ((void*)0), ((void*)0), ((void*)0), enc) <= 0) {
        CMSerr(CMS_F_CMS_ENCRYPTEDCONTENT_INIT_BIO,
               CMS_R_CIPHER_INITIALISATION_ERROR);
        goto err;
    }

    if (enc) {
        int ivlen;
        calg->algorithm = OBJ_nid2obj(EVP_CIPHER_CTX_type(ctx));

        ivlen = EVP_CIPHER_CTX_iv_length(ctx);
        if (ivlen > 0) {
            if (RAND_bytes(iv, ivlen) <= 0)
                goto err;
            piv = iv;
        }
    } else if (EVP_CIPHER_asn1_to_param(ctx, calg->parameter) <= 0) {
        CMSerr(CMS_F_CMS_ENCRYPTEDCONTENT_INIT_BIO,
               CMS_R_CIPHER_PARAMETER_INITIALISATION_ERROR);
        goto err;
    }
    tkeylen = EVP_CIPHER_CTX_key_length(ctx);

    if (!enc || !ec->key) {
        tkey = OPENSSL_malloc(tkeylen);
        if (tkey == ((void*)0)) {
            CMSerr(CMS_F_CMS_ENCRYPTEDCONTENT_INIT_BIO, ERR_R_MALLOC_FAILURE);
            goto err;
        }
        if (EVP_CIPHER_CTX_rand_key(ctx, tkey) <= 0)
            goto err;
    }

    if (!ec->key) {
        ec->key = tkey;
        ec->keylen = tkeylen;
        tkey = ((void*)0);
        if (enc)
            keep_key = 1;
        else
            ERR_clear_error();

    }

    if (ec->keylen != tkeylen) {

        if (EVP_CIPHER_CTX_set_key_length(ctx, ec->keylen) <= 0) {




            if (enc || ec->debug) {
                CMSerr(CMS_F_CMS_ENCRYPTEDCONTENT_INIT_BIO,
                       CMS_R_INVALID_KEY_LENGTH);
                goto err;
            } else {

                OPENSSL_clear_free(ec->key, ec->keylen);
                ec->key = tkey;
                ec->keylen = tkeylen;
                tkey = ((void*)0);
                ERR_clear_error();
            }
        }
    }

    if (EVP_CipherInit_ex(ctx, ((void*)0), ((void*)0), ec->key, piv, enc) <= 0) {
        CMSerr(CMS_F_CMS_ENCRYPTEDCONTENT_INIT_BIO,
               CMS_R_CIPHER_INITIALISATION_ERROR);
        goto err;
    }
    if (enc) {
        calg->parameter = ASN1_TYPE_new();
        if (calg->parameter == ((void*)0)) {
            CMSerr(CMS_F_CMS_ENCRYPTEDCONTENT_INIT_BIO, ERR_R_MALLOC_FAILURE);
            goto err;
        }
        if (EVP_CIPHER_param_to_asn1(ctx, calg->parameter) <= 0) {
            CMSerr(CMS_F_CMS_ENCRYPTEDCONTENT_INIT_BIO,
                   CMS_R_CIPHER_PARAMETER_INITIALISATION_ERROR);
            goto err;
        }

        if (calg->parameter->type == V_ASN1_UNDEF) {
            ASN1_TYPE_free(calg->parameter);
            calg->parameter = ((void*)0);
        }
    }
    ok = 1;

 err:
    if (!keep_key || !ok) {
        OPENSSL_clear_free(ec->key, ec->keylen);
        ec->key = ((void*)0);
    }
    OPENSSL_clear_free(tkey, tkeylen);
    if (ok)
        return b;
    BIO_free(b);
    return ((void*)0);
}
