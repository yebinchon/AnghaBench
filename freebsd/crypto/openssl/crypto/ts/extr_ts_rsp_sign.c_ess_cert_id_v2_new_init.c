
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;


typedef int hash ;
struct TYPE_17__ {int * algorithm; } ;
typedef TYPE_2__ X509_ALGOR ;
typedef int X509 ;
struct TYPE_19__ {TYPE_12__* issuer_serial; int hash; TYPE_2__* hash_alg; } ;
struct TYPE_16__ {int * dirn; } ;
struct TYPE_18__ {TYPE_1__ d; int type; } ;
struct TYPE_15__ {int * serial; int issuer; } ;
typedef TYPE_3__ GENERAL_NAME ;
typedef int EVP_MD ;
typedef TYPE_4__ ESS_CERT_ID_V2 ;


 int * ASN1_INTEGER_dup (int ) ;
 int ASN1_INTEGER_free (int *) ;
 int ASN1_OCTET_STRING_set (int ,unsigned char*,unsigned int) ;
 int ERR_R_MALLOC_FAILURE ;
 int ESS_CERT_ID_V2_free (TYPE_4__*) ;
 TYPE_4__* ESS_CERT_ID_V2_new () ;
 TYPE_12__* ESS_ISSUER_SERIAL_new () ;
 int EVP_MAX_MD_SIZE ;
 int const* EVP_sha256 () ;
 int GENERAL_NAME_free (TYPE_3__*) ;
 TYPE_3__* GENERAL_NAME_new () ;
 int GEN_DIRNAME ;
 int TS_F_ESS_CERT_ID_V2_NEW_INIT ;
 int TSerr (int ,int ) ;
 int X509_ALGOR_free (TYPE_2__*) ;
 TYPE_2__* X509_ALGOR_new () ;
 int X509_ALGOR_set_md (TYPE_2__*,int const*) ;
 int * X509_NAME_dup (int ) ;
 int X509_digest (int *,int const*,unsigned char*,unsigned int*) ;
 int X509_get_issuer_name (int *) ;
 int X509_get_serialNumber (int *) ;
 int memset (unsigned char*,int ,int) ;
 int sk_GENERAL_NAME_push (int ,TYPE_3__*) ;

__attribute__((used)) static ESS_CERT_ID_V2 *ess_cert_id_v2_new_init(const EVP_MD *hash_alg,
                                               X509 *cert, int issuer_needed)
{
    ESS_CERT_ID_V2 *cid = ((void*)0);
    GENERAL_NAME *name = ((void*)0);
    unsigned char hash[EVP_MAX_MD_SIZE];
    unsigned int hash_len = sizeof(hash);
    X509_ALGOR *alg = ((void*)0);

    memset(hash, 0, sizeof(hash));

    if ((cid = ESS_CERT_ID_V2_new()) == ((void*)0))
        goto err;

    if (hash_alg != EVP_sha256()) {
        alg = X509_ALGOR_new();
        if (alg == ((void*)0))
            goto err;
        X509_ALGOR_set_md(alg, hash_alg);
        if (alg->algorithm == ((void*)0))
            goto err;
        cid->hash_alg = alg;
        alg = ((void*)0);
    } else {
        cid->hash_alg = ((void*)0);
    }

    if (!X509_digest(cert, hash_alg, hash, &hash_len))
        goto err;

    if (!ASN1_OCTET_STRING_set(cid->hash, hash, hash_len))
        goto err;

    if (issuer_needed) {
        if ((cid->issuer_serial = ESS_ISSUER_SERIAL_new()) == ((void*)0))
            goto err;
        if ((name = GENERAL_NAME_new()) == ((void*)0))
            goto err;
        name->type = GEN_DIRNAME;
        if ((name->d.dirn = X509_NAME_dup(X509_get_issuer_name(cert))) == ((void*)0))
            goto err;
        if (!sk_GENERAL_NAME_push(cid->issuer_serial->issuer, name))
            goto err;
        name = ((void*)0);
        ASN1_INTEGER_free(cid->issuer_serial->serial);
        cid->issuer_serial->serial =
                ASN1_INTEGER_dup(X509_get_serialNumber(cert));
        if (cid->issuer_serial->serial == ((void*)0))
            goto err;
    }

    return cid;
 err:
    X509_ALGOR_free(alg);
    GENERAL_NAME_free(name);
    ESS_CERT_ID_V2_free(cid);
    TSerr(TS_F_ESS_CERT_ID_V2_NEW_INIT, ERR_R_MALLOC_FAILURE);
    return ((void*)0);
}
