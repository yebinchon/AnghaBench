
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_13__ {TYPE_2__* ameth; } ;
struct TYPE_12__ {int digest_alg; TYPE_4__* pkey; TYPE_1__* issuer_and_serial; int version; } ;
struct TYPE_11__ {int (* pkey_ctrl ) (TYPE_4__*,int ,int ,TYPE_3__*) ;} ;
struct TYPE_10__ {int serial; int issuer; } ;
typedef TYPE_3__ PKCS7_SIGNER_INFO ;
typedef TYPE_4__ EVP_PKEY ;
typedef int EVP_MD ;


 int ASN1_INTEGER_dup (int ) ;
 int ASN1_INTEGER_free (int ) ;
 int ASN1_INTEGER_set (int ,int) ;
 int ASN1_PKEY_CTRL_PKCS7_SIGN ;
 int EVP_MD_type (int const*) ;
 int EVP_PKEY_up_ref (TYPE_4__*) ;
 int OBJ_nid2obj (int ) ;
 int PKCS7_F_PKCS7_SIGNER_INFO_SET ;
 int PKCS7_R_SIGNING_CTRL_FAILURE ;
 int PKCS7_R_SIGNING_NOT_SUPPORTED_FOR_THIS_KEY_TYPE ;
 int PKCS7err (int ,int ) ;
 int V_ASN1_NULL ;
 int X509_ALGOR_set0 (int ,int ,int ,int *) ;
 int X509_NAME_set (int *,int ) ;
 int X509_get_issuer_name (int *) ;
 int X509_get_serialNumber (int *) ;
 int stub1 (TYPE_4__*,int ,int ,TYPE_3__*) ;

int PKCS7_SIGNER_INFO_set(PKCS7_SIGNER_INFO *p7i, X509 *x509, EVP_PKEY *pkey,
                          const EVP_MD *dgst)
{
    int ret;


    if (!ASN1_INTEGER_set(p7i->version, 1))
        goto err;
    if (!X509_NAME_set(&p7i->issuer_and_serial->issuer,
                       X509_get_issuer_name(x509)))
        goto err;





    ASN1_INTEGER_free(p7i->issuer_and_serial->serial);
    if (!(p7i->issuer_and_serial->serial =
          ASN1_INTEGER_dup(X509_get_serialNumber(x509))))
        goto err;


    EVP_PKEY_up_ref(pkey);
    p7i->pkey = pkey;



    X509_ALGOR_set0(p7i->digest_alg, OBJ_nid2obj(EVP_MD_type(dgst)),
                    V_ASN1_NULL, ((void*)0));

    if (pkey->ameth && pkey->ameth->pkey_ctrl) {
        ret = pkey->ameth->pkey_ctrl(pkey, ASN1_PKEY_CTRL_PKCS7_SIGN, 0, p7i);
        if (ret > 0)
            return 1;
        if (ret != -2) {
            PKCS7err(PKCS7_F_PKCS7_SIGNER_INFO_SET,
                     PKCS7_R_SIGNING_CTRL_FAILURE);
            return 0;
        }
    }
    PKCS7err(PKCS7_F_PKCS7_SIGNER_INFO_SET,
             PKCS7_R_SIGNING_NOT_SUPPORTED_FOR_THIS_KEY_TYPE);
 err:
    return 0;
}
