
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_14__ {int serial; int issuer; } ;
struct TYPE_13__ {TYPE_8__* issuer_serial; int hash; } ;
struct TYPE_11__ {int * dirn; } ;
struct TYPE_12__ {TYPE_1__ d; int type; } ;
typedef TYPE_2__ GENERAL_NAME ;
typedef TYPE_3__ ESS_CERT_ID ;


 int ASN1_INTEGER_dup (int ) ;
 int ASN1_INTEGER_free (int ) ;
 int ASN1_OCTET_STRING_set (int ,unsigned char*,int) ;
 int ERR_R_MALLOC_FAILURE ;
 int ESS_CERT_ID_free (TYPE_3__*) ;
 TYPE_3__* ESS_CERT_ID_new () ;
 TYPE_8__* ESS_ISSUER_SERIAL_new () ;
 int EVP_sha1 () ;
 int GENERAL_NAME_free (TYPE_2__*) ;
 TYPE_2__* GENERAL_NAME_new () ;
 int GEN_DIRNAME ;
 int SHA_DIGEST_LENGTH ;
 int TS_F_ESS_CERT_ID_NEW_INIT ;
 int TSerr (int ,int ) ;
 int * X509_NAME_dup (int ) ;
 int X509_check_purpose (int *,int,int ) ;
 int X509_digest (int *,int ,unsigned char*,int *) ;
 int X509_get_issuer_name (int *) ;
 int X509_get_serialNumber (int *) ;
 int sk_GENERAL_NAME_push (int ,TYPE_2__*) ;

__attribute__((used)) static ESS_CERT_ID *ess_CERT_ID_new_init(X509 *cert, int issuer_needed)
{
    ESS_CERT_ID *cid = ((void*)0);
    GENERAL_NAME *name = ((void*)0);
    unsigned char cert_sha1[SHA_DIGEST_LENGTH];


    X509_check_purpose(cert, -1, 0);
    if ((cid = ESS_CERT_ID_new()) == ((void*)0))
        goto err;
    X509_digest(cert, EVP_sha1(), cert_sha1, ((void*)0));
    if (!ASN1_OCTET_STRING_set(cid->hash, cert_sha1, SHA_DIGEST_LENGTH))
        goto err;


    if (issuer_needed) {
        if (cid->issuer_serial == ((void*)0)
            && (cid->issuer_serial = ESS_ISSUER_SERIAL_new()) == ((void*)0))
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
        if (!(cid->issuer_serial->serial =
              ASN1_INTEGER_dup(X509_get_serialNumber(cert))))
            goto err;
    }

    return cid;
 err:
    GENERAL_NAME_free(name);
    ESS_CERT_ID_free(cid);
    TSerr(TS_F_ESS_CERT_ID_NEW_INIT, ERR_R_MALLOC_FAILURE);
    return ((void*)0);
}
